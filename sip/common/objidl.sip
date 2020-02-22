/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/


struct IUnknown /Abstract/
{
public:
    virtual ULONG AddRef() = 0;
    virtual ULONG Release() = 0;
};
