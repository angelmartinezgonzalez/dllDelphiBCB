unit ConectaDll;

interface

function ValidaCodigo(sParametro1: Ansistring; sParametro2:Ansistring):Integer; stdcall;


implementation

function ValidaCodigo; external 'Valida.dll'  Name 'ValidaCodigo'; stdcall;

end.
