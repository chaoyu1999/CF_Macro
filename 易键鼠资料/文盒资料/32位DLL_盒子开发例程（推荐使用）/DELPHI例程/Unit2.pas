unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus;

type
  TForm2 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    edtKey: TEdit;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure Memo1DblClick(Sender: TObject);
    procedure Memo1Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  function ByToWstr(by: array of Byte): widestring;

implementation

uses HandKeyInput;  //, CnBase64;

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
  If HandKeyInput_KeyHandle > 0 Then
  begin
    showmessage('端口已经打开，请不要重复打开端口。请关闭端口后才能再次打开端口!');
    exit;
  End;
  //不管是单头的013W模块，还是双头的012WU模块，都是从1开始打开，依次为2,3,4...
  HandKeyInput_KeyHandle := HandKeyInput_M_Open(1);
  If HandKeyInput_KeyHandle <= 0 Then
  begin
    showmessage('打开端口失败!');
  End
  else
    showmessage('打开端口成功!');
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
  If HandKeyInput_KeyHandle <= 0 Then
  begin
    showmessage('端口还没有打开，请插上模块，打开端口!');
    exit;
  End;
  HandKeyInput_M_Close(HandKeyInput_KeyHandle);
  HandKeyInput_KeyHandle := 0;
end;

procedure TForm2.BitBtn5Click(Sender: TObject);
var KeyCode: string;
begin
  If HandKeyInput_KeyHandle <= 0 Then
  begin
    showmessage('端口还没有打开，请插上模块，打开端口!');
    Exit;
  End;
  edtKey.Text := '';
  edtKey.SetFocus;
  HandKeyInput_InputString2('Aa');
end;

procedure TForm2.BitBtn6Click(Sender: TObject);
var RetCode: integer;
begin
  If HandKeyInput_KeyHandle <= 0 Then
  begin
    showmessage('端口还没有打开，请插上模块，打开端口!');
    Exit;
  End;
  RetCode := HandKeyInput_M_KeyState(HandKeyInput_KeyHandle, 65); // 65 对应 a
  showmessage('a状态=' + inttostr(RetCode));
end;

procedure TForm2.BitBtn8Click(Sender: TObject);
var RetCode: integer;
begin
  If HandKeyInput_KeyHandle <= 0 Then
  begin
    showmessage('端口还没有打开，请插上模块，打开端口!');
    Exit;
  End;
  RetCode := HandKeyInput_M_CapsLockedState(HandKeyInput_KeyHandle);  // 0 灭 1亮
  Showmessage('CapsLockLedState=' + inttostr(RetCode));
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
var
    arr: array [0..255] of Byte;
    sTmp, s64: string;
    RetCode, i, iLen: integer;
begin
  RetCode := HandKeyInput_M_GetDevSn(HandKeyInput_KeyHandle, iLen,  @arr[0]);//序列号保存在arr数组中，长度是iLen
//  Base64Encode(arr, sTmp);
  showmessage('序列号长度(单位:BYTE)' + inttostr(iLen));
end;

function ByToWstr(by: array of Byte): widestring;
var
  tem: array of Byte;
  wstr: widestring;
begin
  SetLength(tem, length(by));
  move(by[0], tem[0], length(by));  // 必须复制到临时内存，直接操作原来数组会崩溃
  wstr := pwidestring(@tem)^;     //这里必须不能加[0]
  Result := wstr;
end;

procedure TForm2.BitBtn7Click(Sender: TObject);
var RetCode: integer;
begin
  If HandKeyInput_KeyHandle <= 0 Then
  begin
    showmessage('端口还没有打开，请插上模块，打开端口!');
    Exit;
  End;
  RetCode := HandKeyInput_M_NumLockLedState(HandKeyInput_KeyHandle);  // 0 灭 1亮
  Showmessage('小键盘灯 = ' + inttostr(RetCode));
end;

procedure TForm2.BitBtn9Click(Sender: TObject);
var RetCode: integer;
begin
  If HandKeyInput_KeyHandle <= 0 Then
  begin
    showmessage('端口还没有打开，请插上模块，打开端口!');
    Exit;
  End;
  // 按了按钮后，迅速将鼠标移到memo1，验证触发双击事件
  HandKeyInput_M_Delay(1000);
  RetCode := HandKeyInput_M_LeftDoubleClick(HandKeyInput_KeyHandle, 1);
  edtKey.Text := IntTostr(RetCode);
end;

procedure TForm2.BitBtn10Click(Sender: TObject);
var RetCode: integer;
begin
  If HandKeyInput_KeyHandle <= 0 Then
  begin
    showmessage('端口还没有打开，请插上模块，打开端口!');
    Exit;
  End;
  // 按了按钮后，迅速将鼠标移到form的空白处，验证触发双击事件
  HandKeyInput_M_Delay(1000);
  RetCode := HandKeyInput_M_RightClick(HandKeyInput_KeyHandle, 1);
  edtKey.Text := IntTostr(RetCode);
end;

procedure TForm2.Memo1DblClick(Sender: TObject);
begin
  showmessage('触发了双击');
end;

procedure TForm2.Memo1Click(Sender: TObject);
begin
  showmessage('触发了单击');
end;

procedure TForm2.BitBtn11Click(Sender: TObject);
begin
  If HandKeyInput_KeyHandle <= 0 Then
  begin
    showmessage('端口还没有打开，请插上模块，打开端口!');
    Exit;
  End;
  // 按了按钮后，迅速将鼠标移到form的空白处，验证触发双击事件
  memo1.SetFocus;
  HandKeyInput_M_Delay(1000);
  HandKeyInput_M_MouseWheel(HandKeyInput_KeyHandle, -10);
end;

procedure TForm2.BitBtn13Click(Sender: TObject);
begin
  If HandKeyInput_KeyHandle <= 0 Then
  begin
    showmessage('端口还没有打开，请插上模块，打开端口!');
    Exit;
  End;
  // 鼠标在当前按钮出，相对右移10，下移动20
  HandKeyInput_M_MoveR2(HandKeyInput_KeyHandle, 10, 20);
end;

procedure TForm2.BitBtn14Click(Sender: TObject);
var x, y: integer;
begin
  If HandKeyInput_KeyHandle <= 0 Then
  begin
    showmessage('端口还没有打开，请插上模块，打开端口!');
    Exit;
  End;
  // 鼠标移动到屏幕的左上角, 100, 200的坐标处
  HandKeyInput_M_Delay(500);
  HandKeyInput_M_MoveTo2(HandKeyInput_KeyHandle, 100, 200);
end;

procedure TForm2.BitBtn15Click(Sender: TObject);
var x, y: integer;
begin
  // 接口有bug
  If HandKeyInput_KeyHandle <= 0 Then
  begin
    showmessage('端口还没有打开，请插上模块，打开端口!');
    Exit;
  End;
  x := 0;
  y := 0;
  BitBtn14.Click();
  HandKeyInput_M_Delay(500);
  HandKeyInput_M_GetCurrMousePos2(x, y);
  showmessage(format('x = %0:D y = %1:D', [x, y]));
end;

end.
