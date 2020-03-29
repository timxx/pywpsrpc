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

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

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
    };
};
