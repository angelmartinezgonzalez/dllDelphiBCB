program TestDllApp;

uses
  Vcl.Forms,
  TestDll in 'TestDll.pas' {TestDllF},
  ConectaDll in 'ConectaDll.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTestDllF, TestDllF);
  Application.Run;
end.
