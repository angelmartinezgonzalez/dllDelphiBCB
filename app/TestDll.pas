﻿unit TestDll;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  ConectaDll;

type
  TTestDllF = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EditParam1: TEdit;
    EditParam2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    ButtonProbarDll: TButton;
    MemoLog: TMemo;
    procedure ButtonProbarDllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TestDllF: TTestDllF;

implementation

{$R *.dfm}

procedure TTestDllF.ButtonProbarDllClick(Sender: TObject);
begin
  MemoLog.Lines.Add('Comienza uso de DLL');
  MemoLog.Lines.Add('Resultado : ' + IntToStr(ValidaCodigo(EditParam1.Text, EditParam2.Text)));


end;

end.
