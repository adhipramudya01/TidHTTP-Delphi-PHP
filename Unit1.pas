unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    H: TIdHTTP;
    Image1: TImage;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);

{
procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



{
procedure TForm1.Button1Click(Sender: TObject);
begin
end;
 }

function twonumbers(a,b:string):string;
var
  url:string;
  H:TidHTTP;
  ss:Tstringstream;

begin

url:='http://localhost/test/name.php?a=' + (a) +'&b='+ (b);
H :=Tidhttp.Create(nil);
try
        ss:=tstringstream.Create('');
        H.Get(url,ss);
        result:=(ss.DataString);
        showmessage(ss.datastring);
        finally ss.Free;
        end;
        //finally H.free;
        end;


procedure TForm1.Button1Click(Sender: TObject);
begin
 twonumbers((edit1.Text),(edit2.text));
//edit3.Text:= result; //edit1.Text;//(twonumbers(edit1.Text),(edit2.Text));

end;

end.








end.
