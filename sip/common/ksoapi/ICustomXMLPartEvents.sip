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
    struct ICustomXMLPartEvents : public IDispatch /Abstract/
    {
    public:
        virtual void NodeAfterInsert(
            CustomXMLNode *NewNode,
            VARIANT_BOOL InUndoRedo) = 0;

        virtual void NodeAfterDelete(
            CustomXMLNode *OldNode,
            CustomXMLNode *OldParentNode,
            CustomXMLNode *OldNextSibling,
            VARIANT_BOOL InUndoRedo) = 0;

        virtual void NodeAfterReplace(
            CustomXMLNode *OldNode,
            CustomXMLNode *NewNode,
            VARIANT_BOOL InUndoRedo) = 0;

    };
};
