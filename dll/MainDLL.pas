﻿unit MainDLL;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,

    inifiles;


function ValidaCodigo(sParametro1: Ansistring; sParametro2:Ansistring): Integer; stdcall;


//variables varias
//  var
//  DirToSaveAll :string;

//  const
//    _CADENA_INICIO_CERTIFICADO = '-----BEGIN CERTIFICATE-----';
//    _CADENA_FIN_CERTIFICADO    = '-----END CERTIFICATE-----';

implementation


function ValidaCodigo(sParametro1: Ansistring; sParametro2:Ansistring) :Integer; stdcall;

//    const
//  pipe = '|';

//var
//  stlctf :TStringList;
begin
//
  ShowMessage('sParametro1' + ' ' + sParametro1 + 'sParametro2' + ' ' +  sParametro2);
  Result:= 0;
end;

end.
