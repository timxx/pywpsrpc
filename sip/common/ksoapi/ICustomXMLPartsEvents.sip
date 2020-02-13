/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct ICustomXMLPartsEvents : public IDispatch /Abstract/
    {
    public:
        virtual void PartAfterAdd(
            CustomXMLPart *NewPart) = 0;

        virtual void PartBeforeDelete(
            CustomXMLPart *OldPart) = 0;

        virtual void PartAfterLoad(
            CustomXMLPart *Part) = 0;

    };
};
