/*
** Copyright @ 2012-2019, Kingsoft office,All rights reserved.
**
** Redistribution and use in source and binary forms ,without modification and
** selling solely, are permitted provided that the following conditions are
** met:
**
** 1.Redistributions of source code must retain the above copyright notice,
**   this list of conditions and the following disclaimer.
** 2.Redistributions in binary form must reproduce the above copyright notice,
**	 this list of conditions and the following disclaimer in the documentation
**	 and/or other materials provided with the distribution.
** 3.Neither the name of the copyright holder nor the names of its contributors
**	 may be used to endorse or promote products derived from this software
**	 without specific prior written permission.
**
** SPECIAL NOTE:THIS SOFTWARE IS NOT PERMITTED TO BE MODIFIED OR SOLD SOLELY AT
** ANY TIME AND UNDER ANY CIRCUMSTANCES, EXCEPT WITH THE WRITTEN PERMISSION OF
** KINGSOFT OFFICE
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
** AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
** IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
** ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
** LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
** CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
** SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
** INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
** CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
** ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
** POSSIBILITY OF SUCH DAMAGE.
**/
#ifndef ___WPSAPI_EXTEND_DEFINED__
#define ___WPSAPI_EXTEND_DEFINED__


class _Application_extend
{
public:
	//extend 公文域
	virtual bool insertDocumentField(QString id) = 0;
	virtual bool setDocumentField(QString id, QString value) = 0;
	virtual QString getAllDocumentField() = 0;
	virtual bool deleteDocumentField(QString id, bool prop = true) = 0;
	virtual bool showDocumentField(QString id, bool enable) = 0;
	virtual QString getDocumentFieldValue(QString id) = 0;
	virtual bool enableDocumentField(QString id, bool enable) = 0;
	virtual bool insertDocument(QString id, QString fileNameURL) = 0;
	virtual bool isExists(QString id) = 0;
	virtual bool DocFieldsProtectExcept(int type, QString Password = "") = 0;
	virtual bool setDocumentMultiField(QString id, QString value, bool enable, QString split = "@#_*@") = 0;
	virtual bool deleteDocumentMultiField(QString id, QString split, bool enable) = 0;
	virtual bool showDocumentMultiField(QString id, QString split, bool enable) = 0;
	virtual bool cursorToDocumentField(QString id, int position) = 0;
	//extend
	virtual int SetShowHide(bool showhide) = 0;
	virtual bool createDocument(QString type) = 0;
	virtual bool openDocument(QString fileName, bool readOnly, QString PasswordDocument = "") = 0;
	virtual bool saveAs(QString fileName = "") = 0;
	virtual bool setToolbarAllVisible(bool enable) = 0;
	virtual bool showCommandByName(QString barName, int index, bool visible) = 0;
	virtual bool setForceBackUpEnabled(bool enable) = 0;
	virtual bool getForceBackUpEnabled() = 0;
};

#endif
