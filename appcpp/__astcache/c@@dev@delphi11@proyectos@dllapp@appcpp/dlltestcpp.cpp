//---------------------------------------------------------------------------

#include <vcl.h>

#pragma hdrstop

#include "DllTestCpp.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"

TDllTestCppF *DllTestCppF;

extern "C" int __declspec(dllexport) __stdcall ValidaCodigo(String sParametro1, String sParametro2);

//---------------------------------------------------------------------------
__fastcall TDllTestCppF::TDllTestCppF(TComponent* Owner)
	: TForm(Owner)
{
}


//---------------------------------------------------------------------------
void __fastcall TDllTestCppF::ButtonPruebaDLLDinamicClick(TObject *Sender)
{
// For Dynamic Linking, we use code like this for
// Run-Time Linking.  With Run-Time (Dynamic) Linking, you load
// the DLL manually, using LoadLibrary, and you locate the
// function you wnat to call, using GetProcAddress,
	HINSTANCE DllValida;
	typedef int(__stdcall * pfValidaCodigo)(String, String);
	pfValidaCodigo ValidaCodigo;

	if ((DllValida = LoadLibraryW(L"Valida.dll")) == NULL) {
		ShowMessage(L"Cannot load DLL!");
		return;
	}
	if ((ValidaCodigo = (pfValidaCodigo)GetProcAddress(DllValida, "ValidaCodigo")) == NULL) {
		ShowMessage(L"Cannot find DLL function!");
		return;
	}

	ShowMessage(ValidaCodigo("25", "75"));
	FreeLibrary(DllValida);
}


//---------------------------------------------------------------------------
void __fastcall TDllTestCppF::ButtonProbarDllClick(TObject *Sender)
{
// For Static Linking using the function prototype and the .LIB
// file, we can call the Sum function:

	MemoLog->Lines->Add(IntToStr(ValidaCodigo(EditParam1->Text, EditParam2->Text)));
}
//---------------------------------------------------------------------------
