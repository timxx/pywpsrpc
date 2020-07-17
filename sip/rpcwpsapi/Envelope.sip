/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct Envelope : public IDispatch /Abstract/
    {
    %TypeCode
        static PyObject* _insertOrPrint(PyObject *sipSelf, PyObject *sipArgs, PyObject *sipKwds, bool isInsert)
        {
            Py_ssize_t posArgsCount = PyTuple_Size(sipArgs);
            if (posArgsCount > 28)
            {
                PyErr_Format(PyExc_TypeError,
                    "%s() takes from 0 to 28 positional arguments but %d were given\n",
                    isInsert ? "Insert" : "PrintOut", posArgsCount);
                return nullptr;
            }

            VARIANT *args[28];

            for (int i = posArgsCount; i < 28; ++i)
                args[i] = argMissing();

            std::vector<std::pair<int, int>> indexes;
            if (!parseVariantArgs(sipArgs, args, indexes))
                return nullptr;

            static const char * const s_kwds[] =
            {
                "ExtractAddress",
                "Address",
                "AutoText",
                "OmitReturnAddress",
                "ReturnAddress",
                "ReturnAutoText",
                "PrintBarCode",
                "PrintFIMA",
                "Size",
                "Height",
                "Width",
                "FeedSource",
                "AddressFromLeft",
                "AddressFromTop",
                "ReturnAddressFromLeft",
                "ReturnAddressFromTop",
                "DefaultFaceUp",
                "DefaultOrientation",
                "PrintEPostage",
                "Vertical",
                "RecipientNamefromLeft",
                "RecipientNamefromTop",
                "RecipientPostalfromLeft",
                "RecipientPostalfromTop",
                "SenderNamefromLeft",
                "SenderNamefromTop",
                "SenderPostalfromLeft",
                "SenderPostalfromTop"
            };
            const int kwdsCount = sizeof(s_kwds) / sizeof(s_kwds[0]);

            if (!parseVariantKwds(sipKwds, s_kwds, kwdsCount, args, posArgsCount, indexes))
                return nullptr; 

            wpsapi::Envelope *sipCpp = reinterpret_cast<wpsapi::Envelope *>(
                sipGetCppPtr((sipSimpleWrapper *)sipSelf, sipType_wpsapi_Envelope));

            auto func = isInsert ? (&wpsapi::Envelope::Insert) : (&wpsapi::Envelope::PrintOut);

            HRESULT hr = (sipCpp->*func)(args[0], args[1], args[2], args[3], args[4],
                args[5], args[6], args[7], args[8], args[9],
                args[10], args[11], args[12], args[13], args[14],
                args[15], args[16], args[17], args[18], args[19],
                args[20], args[21], args[22], args[23], args[24],
                args[25], args[26], args[27]);

            for (const auto &index : indexes)
                sipReleaseType(args[index.first], sipType_VARIANT, index.second);

            return PyLong_FromLong(hr);
        }
    %End

    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Address(
            Range **prop /Out/) = 0;

        virtual HRESULT get_ReturnAddress(
            Range **prop /Out/) = 0;

        virtual HRESULT get_DefaultPrintBarCode(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DefaultPrintBarCode(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DefaultPrintFIMA(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DefaultPrintFIMA(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DefaultHeight(
            single *prop /Out/) = 0;

        virtual HRESULT put_DefaultHeight(
            single prop) = 0;

        virtual HRESULT get_DefaultWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_DefaultWidth(
            single prop) = 0;

        virtual HRESULT get_DefaultSize(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_DefaultSize(
            BSTR prop) = 0;

        virtual HRESULT get_DefaultOmitReturnAddress(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DefaultOmitReturnAddress(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FeedSource(
            WdPaperTray *prop /Out/) = 0;

        virtual HRESULT put_FeedSource(
            WdPaperTray prop) = 0;

        virtual HRESULT get_AddressFromLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_AddressFromLeft(
            single prop) = 0;

        virtual HRESULT get_AddressFromTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_AddressFromTop(
            single prop) = 0;

        virtual HRESULT get_ReturnAddressFromLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_ReturnAddressFromLeft(
            single prop) = 0;

        virtual HRESULT get_ReturnAddressFromTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_ReturnAddressFromTop(
            single prop) = 0;

        virtual HRESULT get_AddressStyle(
            Style **prop /Out/) = 0;

        virtual HRESULT get_ReturnAddressStyle(
            Style **prop /Out/) = 0;

        virtual HRESULT get_DefaultOrientation(
            WdEnvelopeOrientation *prop /Out/) = 0;

        virtual HRESULT put_DefaultOrientation(
            WdEnvelopeOrientation prop) = 0;

        virtual HRESULT get_DefaultFaceUp(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DefaultFaceUp(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Insert2000(
            VARIANT *ExtractAddress = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *AutoText = argMissing(),
            VARIANT *OmitReturnAddress = argMissing(),
            VARIANT *ReturnAddress = argMissing(),
            VARIANT *ReturnAutoText = argMissing(),
            VARIANT *PrintBarCode = argMissing(),
            VARIANT *PrintFIMA = argMissing(),
            VARIANT *Size = argMissing(),
            VARIANT *Height = argMissing(),
            VARIANT *Width = argMissing(),
            VARIANT *FeedSource = argMissing(),
            VARIANT *AddressFromLeft = argMissing(),
            VARIANT *AddressFromTop = argMissing(),
            VARIANT *ReturnAddressFromLeft = argMissing(),
            VARIANT *ReturnAddressFromTop = argMissing(),
            VARIANT *DefaultFaceUp = argMissing(),
            VARIANT *DefaultOrientation = argMissing()) = 0;

        virtual HRESULT PrintOut2000(
            VARIANT *ExtractAddress = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *AutoText = argMissing(),
            VARIANT *OmitReturnAddress = argMissing(),
            VARIANT *ReturnAddress = argMissing(),
            VARIANT *ReturnAutoText = argMissing(),
            VARIANT *PrintBarCode = argMissing(),
            VARIANT *PrintFIMA = argMissing(),
            VARIANT *Size = argMissing(),
            VARIANT *Height = argMissing(),
            VARIANT *Width = argMissing(),
            VARIANT *FeedSource = argMissing(),
            VARIANT *AddressFromLeft = argMissing(),
            VARIANT *AddressFromTop = argMissing(),
            VARIANT *ReturnAddressFromLeft = argMissing(),
            VARIANT *ReturnAddressFromTop = argMissing(),
            VARIANT *DefaultFaceUp = argMissing(),
            VARIANT *DefaultOrientation = argMissing()) = 0;

        virtual HRESULT UpdateDocument() = 0;

        virtual HRESULT Options() = 0;

        virtual HRESULT get_Vertical(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Vertical(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RecipientNamefromLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_RecipientNamefromLeft(
            single prop) = 0;

        virtual HRESULT get_RecipientNamefromTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_RecipientNamefromTop(
            single prop) = 0;

        virtual HRESULT get_RecipientPostalfromLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_RecipientPostalfromLeft(
            single prop) = 0;

        virtual HRESULT get_RecipientPostalfromTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_RecipientPostalfromTop(
            single prop) = 0;

        virtual HRESULT get_SenderNamefromLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_SenderNamefromLeft(
            single prop) = 0;

        virtual HRESULT get_SenderNamefromTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_SenderNamefromTop(
            single prop) = 0;

        virtual HRESULT get_SenderPostalfromLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_SenderPostalfromLeft(
            single prop) = 0;

        virtual HRESULT get_SenderPostalfromTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_SenderPostalfromTop(
            single prop) = 0;

        virtual HRESULT Insert(
            /* VARIANT *ExtractAddress = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *AutoText = argMissing(),
            VARIANT *OmitReturnAddress = argMissing(),
            VARIANT *ReturnAddress = argMissing(),
            VARIANT *ReturnAutoText = argMissing(),
            VARIANT *PrintBarCode = argMissing(),
            VARIANT *PrintFIMA = argMissing(),
            VARIANT *Size = argMissing(),
            VARIANT *Height = argMissing(),
            VARIANT *Width = argMissing(),
            VARIANT *FeedSource = argMissing(),
            VARIANT *AddressFromLeft = argMissing(),
            VARIANT *AddressFromTop = argMissing(),
            VARIANT *ReturnAddressFromLeft = argMissing(),
            VARIANT *ReturnAddressFromTop = argMissing(),
            VARIANT *DefaultFaceUp = argMissing(),
            VARIANT *DefaultOrientation = argMissing(),
            VARIANT *PrintEPostage = argMissing(),
            VARIANT *Vertical = argMissing(),
            VARIANT *RecipientNamefromLeft = argMissing(),
            VARIANT *RecipientNamefromTop = argMissing(),
            VARIANT *RecipientPostalfromLeft = argMissing(),
            VARIANT *RecipientPostalfromTop = argMissing(),
            VARIANT *SenderNamefromLeft = argMissing(),
            VARIANT *SenderNamefromTop = argMissing(),
            VARIANT *SenderPostalfromLeft = argMissing(),
            VARIANT *SenderPostalfromTop = argMissing() */) = 0 /NoArgParser/;
        %Docstring(format="deindented")
            Insert(self, ExtractAddress: Any = None, Address: Any = None, AutoText: Any = None, OmitReturnAddress: Any = None, ReturnAddress: Any = None, ReturnAutoText: Any = None, PrintBarCode: Any = None, PrintFIMA: Any = None, Size: Any = None, Height: Any = None, Width: Any = None, FeedSource: Any = None, AddressFromLeft: Any = None, AddressFromTop: Any = None, ReturnAddressFromLeft: Any = None, ReturnAddressFromTop: Any = None, DefaultFaceUp: Any = None, DefaultOrientation: Any = None, PrintEPostage: Any = None, Vertical: Any = None, RecipientNamefromLeft: Any = None, RecipientNamefromTop: Any = None, RecipientPostalfromLeft: Any = None, RecipientPostalfromTop: Any = None, SenderNamefromLeft: Any = None, SenderNamefromTop: Any = None, SenderPostalfromLeft: Any = None, SenderPostalfromTop: Any = None) -> int
        %End
        %MethodCode
            return _insertOrPrint(sipSelf, sipArgs, sipKwds, true);
        %End

        virtual HRESULT PrintOut(
            /* VARIANT *ExtractAddress = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *AutoText = argMissing(),
            VARIANT *OmitReturnAddress = argMissing(),
            VARIANT *ReturnAddress = argMissing(),
            VARIANT *ReturnAutoText = argMissing(),
            VARIANT *PrintBarCode = argMissing(),
            VARIANT *PrintFIMA = argMissing(),
            VARIANT *Size = argMissing(),
            VARIANT *Height = argMissing(),
            VARIANT *Width = argMissing(),
            VARIANT *FeedSource = argMissing(),
            VARIANT *AddressFromLeft = argMissing(),
            VARIANT *AddressFromTop = argMissing(),
            VARIANT *ReturnAddressFromLeft = argMissing(),
            VARIANT *ReturnAddressFromTop = argMissing(),
            VARIANT *DefaultFaceUp = argMissing(),
            VARIANT *DefaultOrientation = argMissing(),
            VARIANT *PrintEPostage = argMissing(),
            VARIANT *Vertical = argMissing(),
            VARIANT *RecipientNamefromLeft = argMissing(),
            VARIANT *RecipientNamefromTop = argMissing(),
            VARIANT *RecipientPostalfromLeft = argMissing(),
            VARIANT *RecipientPostalfromTop = argMissing(),
            VARIANT *SenderNamefromLeft = argMissing(),
            VARIANT *SenderNamefromTop = argMissing(),
            VARIANT *SenderPostalfromLeft = argMissing(),
            VARIANT *SenderPostalfromTop = argMissing() */) = 0 /NoArgParser/;
        %Docstring(format="deindented")
            PrintOut(self, ExtractAddress: Any = None, Address: Any = None, AutoText: Any = None, OmitReturnAddress: Any = None, ReturnAddress: Any = None, ReturnAutoText: Any = None, PrintBarCode: Any = None, PrintFIMA: Any = None, Size: Any = None, Height: Any = None, Width: Any = None, FeedSource: Any = None, AddressFromLeft: Any = None, AddressFromTop: Any = None, ReturnAddressFromLeft: Any = None, ReturnAddressFromTop: Any = None, DefaultFaceUp: Any = None, DefaultOrientation: Any = None, PrintEPostage: Any = None, Vertical: Any = None, RecipientNamefromLeft: Any = None, RecipientNamefromTop: Any = None, RecipientPostalfromLeft: Any = None, RecipientPostalfromTop: Any = None, SenderNamefromLeft: Any = None, SenderNamefromTop: Any = None, SenderPostalfromLeft: Any = None, SenderPostalfromTop: Any = None) -> int
        %End
        %MethodCode
            return _insertOrPrint(sipSelf, sipArgs, sipKwds, false);
        %End

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)

        Range* getAddress();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Address(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Address()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Address, get=getAddress)

        Range* getReturnAddress();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_ReturnAddress(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReturnAddress()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ReturnAddress, get=getReturnAddress)

        VARIANT_BOOL getDefaultPrintBarCode();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DefaultPrintBarCode(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultPrintBarCode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultPrintBarCode(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultPrintBarCode(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultPrintBarCode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultPrintBarCode, get=getDefaultPrintBarCode, set=setDefaultPrintBarCode)

        VARIANT_BOOL getDefaultPrintFIMA();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DefaultPrintFIMA(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultPrintFIMA()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultPrintFIMA(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultPrintFIMA(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultPrintFIMA()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultPrintFIMA, get=getDefaultPrintFIMA, set=setDefaultPrintFIMA)

        single getDefaultHeight();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_DefaultHeight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultHeight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultHeight(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultHeight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultHeight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultHeight, get=getDefaultHeight, set=setDefaultHeight)

        single getDefaultWidth();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_DefaultWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultWidth(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultWidth, get=getDefaultWidth, set=setDefaultWidth)

        BSTR getDefaultSize();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DefaultSize(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultSize(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultSize(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultSize, get=getDefaultSize, set=setDefaultSize)

        VARIANT_BOOL getDefaultOmitReturnAddress();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DefaultOmitReturnAddress(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultOmitReturnAddress()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultOmitReturnAddress(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultOmitReturnAddress(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultOmitReturnAddress()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultOmitReturnAddress, get=getDefaultOmitReturnAddress, set=setDefaultOmitReturnAddress)

        WdPaperTray getFeedSource();
        %MethodCode
            wpsapi::WdPaperTray prop = (wpsapi::WdPaperTray)0;
            HRESULT hr = sipCpp->get_FeedSource(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FeedSource()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFeedSource(WdPaperTray prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FeedSource(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FeedSource()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FeedSource, get=getFeedSource, set=setFeedSource)

        single getAddressFromLeft();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_AddressFromLeft(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AddressFromLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAddressFromLeft(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AddressFromLeft(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AddressFromLeft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AddressFromLeft, get=getAddressFromLeft, set=setAddressFromLeft)

        single getAddressFromTop();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_AddressFromTop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AddressFromTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAddressFromTop(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AddressFromTop(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AddressFromTop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AddressFromTop, get=getAddressFromTop, set=setAddressFromTop)

        single getReturnAddressFromLeft();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_ReturnAddressFromLeft(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReturnAddressFromLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReturnAddressFromLeft(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReturnAddressFromLeft(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReturnAddressFromLeft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReturnAddressFromLeft, get=getReturnAddressFromLeft, set=setReturnAddressFromLeft)

        single getReturnAddressFromTop();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_ReturnAddressFromTop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReturnAddressFromTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReturnAddressFromTop(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReturnAddressFromTop(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReturnAddressFromTop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReturnAddressFromTop, get=getReturnAddressFromTop, set=setReturnAddressFromTop)

        Style* getAddressStyle();
        %MethodCode
            wpsapi::Style *prop = nullptr;
            HRESULT hr = sipCpp->get_AddressStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AddressStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AddressStyle, get=getAddressStyle)

        Style* getReturnAddressStyle();
        %MethodCode
            wpsapi::Style *prop = nullptr;
            HRESULT hr = sipCpp->get_ReturnAddressStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReturnAddressStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ReturnAddressStyle, get=getReturnAddressStyle)

        WdEnvelopeOrientation getDefaultOrientation();
        %MethodCode
            wpsapi::WdEnvelopeOrientation prop = (wpsapi::WdEnvelopeOrientation)0;
            HRESULT hr = sipCpp->get_DefaultOrientation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultOrientation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultOrientation(WdEnvelopeOrientation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultOrientation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultOrientation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultOrientation, get=getDefaultOrientation, set=setDefaultOrientation)

        VARIANT_BOOL getDefaultFaceUp();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DefaultFaceUp(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultFaceUp()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultFaceUp(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultFaceUp(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultFaceUp()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultFaceUp, get=getDefaultFaceUp, set=setDefaultFaceUp)

        VARIANT_BOOL getVertical();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Vertical(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Vertical()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVertical(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Vertical(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Vertical()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Vertical, get=getVertical, set=setVertical)

        single getRecipientNamefromLeft();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_RecipientNamefromLeft(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RecipientNamefromLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRecipientNamefromLeft(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RecipientNamefromLeft(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RecipientNamefromLeft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RecipientNamefromLeft, get=getRecipientNamefromLeft, set=setRecipientNamefromLeft)

        single getRecipientNamefromTop();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_RecipientNamefromTop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RecipientNamefromTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRecipientNamefromTop(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RecipientNamefromTop(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RecipientNamefromTop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RecipientNamefromTop, get=getRecipientNamefromTop, set=setRecipientNamefromTop)

        single getRecipientPostalfromLeft();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_RecipientPostalfromLeft(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RecipientPostalfromLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRecipientPostalfromLeft(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RecipientPostalfromLeft(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RecipientPostalfromLeft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RecipientPostalfromLeft, get=getRecipientPostalfromLeft, set=setRecipientPostalfromLeft)

        single getRecipientPostalfromTop();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_RecipientPostalfromTop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RecipientPostalfromTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRecipientPostalfromTop(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RecipientPostalfromTop(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RecipientPostalfromTop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RecipientPostalfromTop, get=getRecipientPostalfromTop, set=setRecipientPostalfromTop)

        single getSenderNamefromLeft();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_SenderNamefromLeft(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SenderNamefromLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSenderNamefromLeft(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SenderNamefromLeft(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SenderNamefromLeft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SenderNamefromLeft, get=getSenderNamefromLeft, set=setSenderNamefromLeft)

        single getSenderNamefromTop();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_SenderNamefromTop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SenderNamefromTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSenderNamefromTop(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SenderNamefromTop(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SenderNamefromTop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SenderNamefromTop, get=getSenderNamefromTop, set=setSenderNamefromTop)

        single getSenderPostalfromLeft();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_SenderPostalfromLeft(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SenderPostalfromLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSenderPostalfromLeft(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SenderPostalfromLeft(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SenderPostalfromLeft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SenderPostalfromLeft, get=getSenderPostalfromLeft, set=setSenderPostalfromLeft)

        single getSenderPostalfromTop();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_SenderPostalfromTop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SenderPostalfromTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSenderPostalfromTop(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SenderPostalfromTop(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SenderPostalfromTop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SenderPostalfromTop, get=getSenderPostalfromTop, set=setSenderPostalfromTop)
    };
};
