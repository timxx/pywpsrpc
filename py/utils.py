#**
# * Copyright (c) 2020 Weitian Leung
# *
# * This file is part of pywpsrpc.
# *
# * This file is distributed under the MIT License.
# * See the LICENSE file for details.
# *
#*


from .common import (S_OK, IUnknown)
from types import BuiltinFunctionType


class RpcException(Exception):

    def __init__(self, text, hr=None):
        self._text = text
        self._hr = hr

    def __str__(self):
        text = "RpcException: {}".format(self._text)
        if self._hr is not None:
            text += " ({})".format(hex(self._hr & 0xffffffff))

        return text


class RpcMethod(object):
    __slots__ = ["_method", "_proxy"]

    def __init__(self, method, proxy):
        self._proxy = None
        if not isinstance(method, BuiltinFunctionType):
            raise RpcException("RpcMethod required builtin function or method")

        self._method = method
        self._proxy = proxy

    def __call__(self, *args, **kwargs):
        ret = self._method(*args, **kwargs)
        if isinstance(ret, tuple):
            self._proxy.last_error = ret[0]
            if ret[0] != S_OK:
                if self._proxy.use_exception:
                    raise RpcException("Call '{}' failed.".format(
                        self._method), ret[0])
                return None

            if len(ret) == 2:
                if isinstance(ret[1], IUnknown):
                    return RpcProxy(ret[1], self._proxy.use_exception)
                else:
                    return ret[1]

            result = ()
            for i in range(1, len(ret)):
                if isinstance(ret[i], IUnknown):
                    result += (RpcProxy(ret[i], self._proxy.use_exception), )
                else:
                    result += (ret[i], )
            return result

        self._proxy.last_error = ret
        return ret == S_OK

    @property
    def __doc__(self):
        return self._method.__doc__


class RpcIter(object):
    def __init__(self, rpc_object):
        self._obj = rpc_object
        # starts from 1 not 0
        self._index = 1
        self._count = len(rpc_object)

    def __iter__(self):
        return self

    def __next__(self):
        if self._index > self._count:
            raise StopIteration

        value = self._obj[self._index]
        self._index += 1

        return value


class RpcProxy(object):
    """ Deprecated
    use RpcProxy only if you want to deduce the HRESULT
    """

    __slots__ = ["_object", "_use_exception", "_last_hr"]

    def __init__(self, obj, use_exception=False):
        """ The obj can be (hr, IUnknown) or IUnknown.
        If use_exception set to True then any call failed will raise an exception.
        """

        def _check_iunknown(obj):
            if not isinstance(obj, IUnknown):
                raise RpcException("RpcProxy required an IUnknown instance")

        self._object = None
        self._last_hr = S_OK
        if isinstance(obj, tuple):
            self._last_hr = obj[0]
            if obj[0] == S_OK:
                _check_iunknown(obj[1])
                self._object = obj[1]
            elif use_exception:
                raise RpcException(
                    "Can't create proxy due to the previous call failed.", obj[0])
        else:
            _check_iunknown(obj)
            self._object = obj

        self._use_exception = use_exception

    def __getattr__(self, name):
        value = getattr(self._object, name)
        if isinstance(value, BuiltinFunctionType):
            return RpcMethod(value, self)
        elif isinstance(value, IUnknown):
            value = RpcProxy(value, self._use_exception)

        self._last_hr = S_OK
        return value

    def __setattr__(self, name, value):
        if name in self.__slots__ or name in ("use_exception", "last_error", "rpc_object"):
            super().__setattr__(name, value)
        else:
            setattr(self._object, name, value)
            self._last_hr = S_OK

    def __bool__(self):
        return self._object is not None

    def __len__(self):
        return len(self._object)

    def __getitem__(self, index):
        item = self._object.__getitem__(index)
        if isinstance(item, IUnknown):
            item = RpcProxy(item, self._use_exception)

        return item

    def __iter__(self):
        if hasattr(self._object, "__iter__"):
            return iter(self._object)

        return RpcIter(self)

    @property
    def rpc_object(self):
        return self._object

    @property
    def use_exception(self):
        return self._use_exception

    @use_exception.setter
    def use_exception(self, value):
        self._use_exception = value

    @property
    def last_error(self):
        return self._last_hr

    @last_error.setter
    def last_error(self, hr):
        self._last_hr = hr
