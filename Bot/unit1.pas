unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, inifiles;

type

  { TForm1 }

  TForm1 = class(TForm)
    procedure FormDestroy(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormDestroy(Sender: TObject);
  var Ini: Tinifile;
  begin
    Ini:=TiniFile.Create(extractfilepath(paramstr(0))+'MyIni.ini'); //создали файл в директории программы
    Ini.WriteInteger('Size','Width',form1.width);
    Ini.Free;
  end;

end.

