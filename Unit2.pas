unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation;

type
  TForm2 = class(TForm)
    lblInput1: TLabel;
    edtintput1: TEdit;
    edtinput2: TEdit;
    edtoutput: TEdit;
    lbl2: TLabel;
    lbloutput: TLabel;
    btnReplaceChanges: TButton;
    chkAutoReplace: TCheckBox;
    procedure btnReplaceChangesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.btnReplaceChangesClick(Sender: TObject);
var
sInput1:string;
sInput2:string;
sOutput:string;
k:integer;
begin
//Input validation============
  if (edtintput1.Text.Length<2) then
  begin
    ShowMessage('I dont think that first input is long enough');
    edtintput1.SetFocus;
    exit;
  end;
  sInput1:=edtintput1.Text;
  if (edtinput2.Text.Length<2) then
  begin
    ShowMessage('I dont think that first input is long enough');
    edtintput1.SetFocus;
    exit;
  end;
  sInput2:=edtinput2.Text;

  if not(sInput1.Length=sInput2.Length) then
  begin
    ShowMessage('AOBs are not the same length');
    exit;
  end;


//input validation==============
  for k := 1 to  sinput1.Length do
  begin
    if (sInput1[k]=sinput2[k]) then
    begin
      sOutput:=sOutput+sInput1[k];
    end else
    begin
      sOutput:=sOutput+'?';
    end;
  end;

  edtoutput.Text:=sOutput;
  if (chkAutoReplace.IsChecked) then
  begin
    edtintput1.Text:=sOutput;
  end;
end;

end.
