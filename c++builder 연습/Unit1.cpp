//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
		RESTRequest1->Method=rmPOST;
		RESTRequest1->Resource="/useradd/?username="+Edit1->Text+"&langgrade="+Edit2->Text+"&mathgrade="+Edit3->Text+"&chemgrade="+Edit4->Text+"&gradeaverage="+Edit5->Text+"&totalgrade="+Edit6->Text;
		RESTRequest1->Execute();
		for(int i=0;i<DBGrid1->Columns->Count;i++)
		{
			DBGrid1->Columns->Items[i]->Width=100;
		}

}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button4Click(TObject *Sender)
{
   RESTRequest1->Method=rmPOST;
   RESTRequest1->Resource="/userdelete/?username="+Edit1->Text;
   RESTRequest1->Execute();
		for(int i=0;i<DBGrid1->Columns->Count;i++)
		{
			DBGrid1->Columns->Items[i]->Width=100;
		}
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button5Click(TObject *Sender)
{
	RESTRequest1->Method=rmGET;
	RESTRequest1->Resource="/usersearch/?username="+Edit1->Text;
	RESTRequest1->Execute();
		for(int i=0;i<DBGrid1->Columns->Count;i++)
		{
			DBGrid1->Columns->Items[i]->Width=100;
		}

}
//---------------------------------------------------------------------------
