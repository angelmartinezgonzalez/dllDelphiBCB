﻿//---------------------------------------------------------------------------

#ifndef DllTestCppH
#define DllTestCppH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
//---------------------------------------------------------------------------
class TDllTestCppF : public TForm
{
__published:	// IDE-managed Components
	TGroupBox *GroupBox1;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TEdit *EditParam1;
	TEdit *EditParam2;
	TButton *ButtonProbarDll;
	TMemo *MemoLog;
	TButton *ButtonPruebaDLLDinamic;
	void __fastcall ButtonPruebaDLLDinamicClick(TObject *Sender);
	void __fastcall ButtonProbarDllClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TDllTestCppF(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TDllTestCppF *DllTestCppF;

//---------------------------------------------------------------------------
#endif
