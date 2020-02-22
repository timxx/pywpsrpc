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
        if not self._hr is None:
            text += " ({})".format(hex(self._hr & 0xffffffff))

        return text


class RpcMethod(object):

    def __init__(self, method, use_exception=False):
        if not isinstance(method, BuiltinFunctionType):
            raise RpcException("RpcMethod required builtin function or method")

        self._method = method
        self._use_exception = use_exception

    def __call__(self, *args, **kwargs):
        ret = self._method(*args, **kwargs)
        if isinstance(ret, tuple):
            if ret[0] != S_OK:
                if self._use_exception:
                    raise RpcException("Call '{}' failed.".format(
                        self._method), ret[0])
                return None

            if len(ret) == 2:
                if isinstance(ret[1], IUnknown):
                    return RpcProxy(ret[1], self._use_exception)
                else:
                    return ret[1]

            result = ()
            for i in range(1, len(ret)):
                if isinstance(ret[i], IUnknown):
                    result += (RpcProxy(ret[i], self._use_exception), )
                else:
                    result += (ret[i], )
            return result

        return ret == S_OK


class RpcProxy(object):

    def __init__(self, obj, use_exception=False):
        """ The obj can be (hr, IUnknown) or IUnknown.
        If use_exception set to True then any call failed will raise an exception.
        """

        def _check_iunkown(obj):
            if not isinstance(obj, IUnknown):
                raise RpcException("RpcProxy required an IUnknown instance")

        if isinstance(obj, tuple):
            if obj[0] == S_OK:
                _check_iunkown(obj[1])
                self._object = obj[1]
            else:
                self._object = None
        else:
            _check_iunkown(obj)
            self._object = obj

        self._use_exception = use_exception

    def __getattr__(self, name):
        if hasattr(self._object, name):
            return RpcMethod(getattr(self._object, name), self._use_exception)

        hr, value = getattr(self._object, "get_" + name)()
        if hr != S_OK:
            if self._use_exception:
                raise RpcException("Call '{}.get_{}()' failed.".format(
                    self._object.__class__.__name__, name), hr)
            value = None
        elif isinstance(value, IUnknown):
            value = RpcProxy(value, self._use_exception)

        return value

    def __setattr__(self, name, value):
        if name.startswith("_"):
            super().__setattr__(name, value)
        else:
            hr = getattr(self._object, "put_" + name)(value)
            if hr != S_OK and self._use_exception:
                raise RpcException("Call '{}.put_{}({})' failed.".format(
                    self._object.__class__.__name__, name, value), hr)
