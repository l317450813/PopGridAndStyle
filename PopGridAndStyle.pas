unit PopGridAndStyle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, StdCtrls, ADODB, GridsEh, DBGridEh, StrUtils, cxGridBandedTableView,
  RzLstBox, cxLookAndFeelPainters, DBGridEhImpExp, RzButton, ExtCtrls, RzPanel;

type
  TafterOpenDataSet = procedure(DataSet: TDataSet) of object;

  PDataSetNotifyEvent = ^TDataSetNotifyEvent;

  PMethod = ^TMethod;

  TGridForm = class(TForm)
    cxstylrpstry: TcxStyleRepository;
    cxstylHeader: TcxStyle;
    cxstylOdd: TcxStyle;
    cxstylEven: TcxStyle;
    cxstylSelection: TcxStyle;
    cxstylBackGround: TcxStyle;
    cxstylHeaderBold: TcxStyle;
    cxstylBkg: TcxStyle;
    cxstylHighLightBlueBk: TcxStyle;
    cxstylHeader11: TcxStyle;
    cxstylOdd11: TcxStyle;
    cxstylEven11: TcxStyle;
    cxstylSelection11: TcxStyle;
    cxstylHeaderBold11: TcxStyle;
    cxstylGroup11: TcxStyle;
    cxstylGroup10: TcxStyle;
    HeaderYH9: TcxStyle;
    HeaderYH10: TcxStyle;
    OddYH9: TcxStyle;
    OddYH10: TcxStyle;
    EvenYH9: TcxStyle;
    EvenYH10: TcxStyle;
    SelectionYH9: TcxStyle;
    SelectionYH10: TcxStyle;
    cxstyl1: TcxStyle;
    cxstylRedBk: TcxStyle;
    OrderStoped: TcxStyle;
    OrderCancelled: TcxStyle;
    SkinTestPsositiveYH9: TcxStyle;
    cxstylredfont: TcxStyle;
    commonStyle: TcxGridBandedTableViewStyleSheet;
    YZvw10: TcxGridTableViewStyleSheet;
    tblVwStyle11: TcxGridTableViewStyleSheet;
    bndsht10OE: TcxGridBandedTableViewStyleSheet;
    bndsht9: TcxGridBandedTableViewStyleSheet;
    ds_sjj: TDataSource;
    cxstyl_RedFont13: TcxStyle;
    cxstyl_GreenFont13: TcxStyle;
    cxstyl_Header14: TcxStyle;
    cxstyl_content13: TcxStyle;
    cxstyl_select13: TcxStyle;
    Yzvw13: TcxGridTableViewStyleSheet;
    cxstyl_odd13: TcxStyle;
    cxstyl_even13: TcxStyle;
    cxstyl_selectYellow13: TcxStyle;
    Yzvw13new: TcxGridTableViewStyleSheet;
    cxstyl_footer13: TcxStyle;
    cxstyl_content10: TcxStyle;
    cxStyle_new_style: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    YaHe_N12_Header: TcxStyle;
    YaHe_N12_Even: TcxStyle;
    YaHe_N12_Odd: TcxStyle;
    YaHe_N12_Selection: TcxStyle;
    YaHe_N11_Header: TcxStyle;
    YaHe_N11_Even: TcxStyle;
    YaHe_N11_Odd: TcxStyle;
    YaHe_N11_Selection: TcxStyle;
    YaHe_N10_Header: TcxStyle;
    YaHe_N10_Even: TcxStyle;
    YaHe_N10_Odd: TcxStyle;
    YaHe_N10_Selection: TcxStyle;
    YaHe_N9_Header: TcxStyle;
    YaHe_N9_Even: TcxStyle;
    YaHe_N9_Odd: TcxStyle;
    YaHe_N9_Selection: TcxStyle;
    YaHe_N10_GreenFont: TcxStyle;
    YaHe_N11_lcljbr: TcxStyle;
    YaHe_N10_stop_today: TcxStyle;
    YaHe_N10_long: TcxStyle;
    YaHe_N10_temp: TcxStyle;
    YaHe_N10_stopped: TcxStyle;
    YaHe_N10_cancel: TcxStyle;
    YaHe_N10_special: TcxStyle;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridTableViewStyleSheet2: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet2: TcxGridBandedTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet3: TcxGridBandedTableViewStyleSheet;
    YaHe12Normal: TcxGridTableViewStyleSheet;
    YaHe11Normal_simple: TcxGridTableViewStyleSheet;
    YaHe10Normal_simple: TcxGridTableViewStyleSheet;
    YaHe9Normal: TcxGridTableViewStyleSheet;
    bndYaHe10Normal: TcxGridBandedTableViewStyleSheet;
    bndYaHe11Normal: TcxGridBandedTableViewStyleSheet;
    bndYaHe12Normal: TcxGridBandedTableViewStyleSheet;
    YaHe_N11_Footer: TcxStyle;
    YaHe_N10_Footer: TcxStyle;
    yahe10_red: TcxStyle;
    yahe10_green: TcxStyle;
    yahe10_purple: TcxStyle;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    //1 需要设置的dbgrideh
    FDbgridehList: TStringList;
    //1  需要返回值的字段
    Ffield: string;
    //1 将要定位的字段
    FfieldString: string;
    //1 当前聚焦的控件
    FFocusedControl: TWinControl;
    //1  下一个需要聚焦的列的index
    FnextColumnIndex: Integer;
    //1 下一个将要聚焦的控件
    FNextControl: TWinControl;
    //1 传过来的数据集
    Fsjj: TCustomADODataSet;
    FFocusedGrid: TcxGridDBTableView;
    //1 popgrid的父窗体
    FParent: TWinControl;
    Fpopgrid: TcxGridDBTableView;
    { Private declarations }
    procedure aGridExit(Sender: TObject);
    //1 dbgrideh的dblc.lick
    procedure DbgridDblClick(Sender: TObject);
    //1 dbgrideh的keypress
    procedure DbgridKeyPress(Sender: TObject; var Key: Char);
    //1 listbox 的双击事件
    procedure ListBoxDblClick(Sender: TObject);
    //1 listbox 退出事件
    procedure ListBoxExit(sender: TObject);
    //1 listbox的keypress事件
    procedure ListBoxKeypress(Sender: TObject; var Key: Char);
    procedure TableViewKeyPress_edit(Sender: TObject; var Key: Char);
    procedure TableViewDblClick(Sender: TObject);
    procedure SetValueFofEdit;
    //1 设置cxgriddbtableview的值
    procedure SetValueFofGrid;
    procedure TableViewKeyPress_grid(sender: TObject; var key: Char);
    procedure SetDbgridehStyle(var aGrid: TDBGridEh; fitClientWidth: Boolean);
  public
    //1 原来的值,用于拼接
    FoldString: string;
    onDbgridehAfterOpen: TafterOpenDataSet;
    //用于存放方法指针的数组
    FoldAfterOpenList: array[0..10] of PMethod;
    //1 显示搜索框   利用数据集 combox和edit可使用
    procedure showGrid(aControl: TWinControl; aNextControl: TWinControl; sjj:
      TCustomADODataSet; gridString: string; control_fieldString: string;
      aCxgridTableView: TcxGridDBTableView; old_string: string = ''); overload;
    //1 显示搜索框   直接调用方法即可
    procedure showGridEx(aControl, aNextControl: TWinControl; sjj:
      TCustomADODataSet; gridString, control_fieldString: string; old_string:
      string = '');
    // 显示搜索框    直接在combox的items中检索
    procedure showGrid(aControl: TCustomCombo; aNextControl: TWinControl);
      overload;
    //在cxgrid中进行检索
    procedure showGrid(aControl, popgrid: TcxGridDBTableView; aNextColumnIndex:
      Integer; sjj: TCustomADODataSet; gridString: string; aField: string;
      old_string: string = ''); overload;
      //设置cxgrid的默认样式    fitClientWidth 是否自动适应屏幕的宽度,false为适应列的宽度适应
    procedure SetCxgridDefaultValue(aGrid: TcxGridDBTableView; isCellSelect:
      Boolean = True; fitClientWidth: Boolean = True);
      //设置dbgrideh的默认样式      fitClientWidth 是否自动适应屏幕的宽度,false为适应列的宽度适应
    procedure setDbgridehDefaultValue(aGrid: TDBGridEh; fitClientWidth: Boolean
      = False);
    //cxgrid应用自适应列宽配置
    procedure ApplyBestFit(cxGridDBTableView: TcxGridDBTableView);
    //对整个form中的cxgrid和dbgrideh使用默认样式
    procedure SetStyleToForm(aForm: TForm; isCellSelect: Boolean = true);
    //将汉字转化为拼音
    function HZtoPY(HZStr: WideString): string;
    //给一个空间设置在form中的位置,建议控件的parent为form
    procedure SetLeftAndTop(acontrol: TWinControl; var aleft: Integer; var atop:
      Integer);
    //cxgrid显示行号
    procedure DrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    //dbgrideh导出成为excel
    procedure DbGridEhToExcel(ADgEh: TDBGridEh);
    //设置rzbutton样式 和panel的默认样式
    procedure setRzbuttonAndPanelStyle(aForm: TCustomForm);
    //dbgrideh自适应列宽
    procedure DBGridEhOptimizeWidth(aDbgrideh: TDBGridEh);
    procedure dbgridehAfterOpen(DataSet: TDataSet);
    { Public declarations }
  end;

var
  GridForm: TGridForm;
  ListBox: TRzListBox;

implementation

{$R *.dfm}

procedure TGridForm.FormCreate(Sender: TObject);
begin
  //   onDbgridehAfterOpen:= dbgridehAfterOpen;
end;

procedure TGridForm.FormDestroy(Sender: TObject);
begin
  if Assigned(FDbgridehList) then
    FDbgridehList.Free;
  //  if Assigned(FoldAfterOpenList) then
  //    FoldAfterOpenList.Free;
end;

procedure TGridForm.aGridExit(Sender: TObject);
begin
  TWinControl(Sender).Visible := False;
end;

procedure TGridForm.TableViewDblClick(Sender: TObject);
var
  key: Char;
begin
  key := #13;
  TableViewKeyPress_edit(Sender, key);
end;

procedure TGridForm.TableViewKeyPress_edit(Sender: TObject; var Key: Char);
var
  _level: TcxGridLevel;
  _grid: TcxGrid;
begin
  if Key = #13 then
  begin
    SetValueFofEdit();
  end;

  if Key = #27 then
  begin
    if Assigned(Fpopgrid) then
    begin
      _level := TcxGridLevel(Fpopgrid.Level);
      _grid := TcxGrid(_level.Control);
      _grid.Visible := False;
    end;
  end;
end;

procedure TGridForm.ApplyBestFit(cxGridDBTableView: TcxGridDBTableView);
begin
  with cxGridDBTableView do
  begin
    BeginUpdate;
    ApplyBestFit();
    EndUpdate;
  end;
end;

procedure TGridForm.DbgridDblClick(Sender: TObject);
var
  v_char: Char;
begin
  v_char := #13;
  DbgridKeyPress(Sender, v_char);
end;

procedure TGridForm.dbgridehAfterOpen(DataSet: TDataSet);
var
  I: Integer;
  j: Integer;
  v_dbgrideh: TDBGridEh;
  v_dataset: TDataSet;
  v_dataset_notify_event: TDataSetNotifyEvent;
  v_afteropen_index: Integer;
begin

  if not DataSet.IsEmpty then
  begin
    for j := 0 to self.FDbgridehList.Count - 1 do
    begin
      v_dbgrideh := TDBGridEh(Self.FDbgridehList.Objects[j]);
      if Assigned(v_dbgrideh.DataSource) then
      begin
        v_dataset := v_dbgrideh.DataSource.DataSet;
        if DataSet.Name = v_dataset.Name then
        begin
          //执行原来的afteropen事件
     //      New(v_dataset_notify_event);

          //        v_dataset_notify_event := PDataSetNotifyEvent(Self.FoldAfterOpenList.Objects[j]);
    //        v_dataset_notify_event^(DataSet);
          if Assigned(FoldAfterOpenList[j]^.Code) then
          begin
            v_dataset_notify_event := TDataSetNotifyEvent(FoldAfterOpenList[j]^);
            v_dataset_notify_event(DataSet);
          end;
          for I := 0 to v_dbgrideh.Columns.Count - 1 do
          begin
            v_dbgrideh.Columns[I].OptimizeWidth;
          end;
        end;
      end;
    end;

  end;

end;

procedure TGridForm.SetDbgridehStyle(var aGrid: TDBGridEh; fitClientWidth:
  Boolean);
var
  I: Integer;
begin
  with aGrid do
  begin
    Flat := true;
    aGrid.FixedColor := YZvw10.Styles.Header.Color;
    aGrid.OddRowColor := YZvw10.Styles.ContentOdd.Color;
    aGrid.EvenRowColor := YZvw10.Styles.ContentEven.Color;
    aGrid.Color := YZvw10.Styles.Background.Color;
    aGrid.AutoFitColWidths := fitClientWidth;
    //适应屏幕宽度
    aGrid.Options := [dgTitles, dgIndicator, dgColumnResize, dgColLines,
      dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete,
      dgCancelOnExit];
    aGrid.EditActions := [geaCopyEh, geaSelectAllEh];
    with aGrid.TitleFont do
    begin
      Charset := ANSI_CHARSET;
      Color := clWindowText;
      Height := -13;
      Name := '微软雅黑';
      Orientation := 0;
      Pitch := fpDefault;
      Size := 10;
    end;
    with aGrid.Font do
    begin
      Charset := ANSI_CHARSET;
      Color := clWindowText;
      Height := -13;
      Name := '微软雅黑';
      Orientation := 0;
      Pitch := fpDefault;
      Size := 10;
    end;
    for I := 0 to aGrid.Columns.Count - 1 do
    begin
      aGrid.Columns[I].WordWrap := True;
    end;
  end;
end;

procedure TGridForm.DBGridEhOptimizeWidth(aDbgrideh: TDBGridEh);
var
  i: Integer;
begin
  if aDbgrideh.DataSource.DataSet.IsEmpty then
    Exit;

  for i := 0 to aDbgrideh.Columns.Count - 1 do
  begin
    aDbgrideh.Columns[i].OptimizeWidth;
  end;
end;

procedure TGridForm.DbGridEhToExcel(ADgEh: TDBGridEh);
var
  ExpClass: TDBGridEhExportclass;
  Ext: string;
  FSaveDialog: TSaveDialog;
begin
  try
    if (not ADgEh.DataSource.DataSet.Active) or ADgEh.DataSource.DataSet.IsEmpty
      then
    begin
      Application.MessageBox(PChar('没有可导出的数据'), pchar(TCustomForm(Fparent).caption),
        MB_OK + MB_ICONINFORMATION);
      exit;
    end;
    FSaveDialog := TSaveDialog.Create(Self);
    FSaveDialog.Filter :=
      'Excel 文档 (*.xls)|*.XLS|Text files (*.txt)|*.TXT|Comma separated values (*.csv)|*.CSV|HTML file (*.htm)|*.HTM|Word 文档 (*.rtf)|*.RTF';
    if FSaveDialog.Execute and (trim(FSaveDialog.FileName) <> '') then
    begin
      case FSaveDialog.FilterIndex of
        1:
          begin
            ExpClass := TDBGridEhExportAsXLS;
            Ext := 'xls';
          end;
        2:
          begin
            ExpClass := TDBGridEhExportAsText;
            Ext := 'txt';
          end;
        3:
          begin
            ExpClass := TDBGridEhExportAsCSV;
            Ext := 'csv';
          end;
        4:
          begin
            ExpClass := TDBGridEhExportAsHTML;
            Ext := 'htm';
          end;
        5:
          begin
            ExpClass := TDBGridEhExportAsRTF;
            Ext := 'rtf';
          end;
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(FSaveDialog.FileName, Length(FSaveDialog.FileName) - 2,
          3)) <> UpperCase(Ext) then
          FSaveDialog.FileName := FSaveDialog.FileName + '.' + Ext;
        if FileExists(FSaveDialog.FileName) then
        begin
          if application.MessageBox('文件名已存在，是否覆盖   ', pchar(TCustomForm(Fparent).caption),
            MB_ICONASTERISK or MB_OKCANCEL) <> idok then
            exit;
        end;
        Screen.Cursor := crHourGlass;
        SaveDBGridEhToExportFile(ExpClass, ADgEh, FSaveDialog.FileName, true);
        Screen.Cursor := crDefault;
        MessageBox(Handle, '导出成功  ', pchar(TCustomForm(Fparent).caption), MB_OK
          + MB_ICONINFORMATION);
      end;
    end;
    FSaveDialog.Destroy;
  except
    on e: exception do
    begin
      Application.MessageBox(PChar(e.message), pchar(TCustomForm(Fparent).caption),
        MB_OK + MB_ICONSTOP);
    end;
  end;
end;

procedure TGridForm.DbgridKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    SetValueFofEdit();

    if Assigned(TDBGridEh(Sender).DataSource) then
      TDBGridEh(Sender).DataSource.Free;

    if Assigned(TWinControl(Sender)) then
      TWinControl(Sender).Free;
  end;

  if Key = #27 then
  begin
    TWinControl(Sender).Visible := False;
  end;
end;

procedure TGridForm.DrawIndicatorCell(Sender: TcxGridTableView; ACanvas:
  TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  if not (AViewInfo is TcxGridIndicatorRowItemViewInfo) then
    Exit;

  Sender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.Bounds, AViewInfo.Bounds,
    [], cxBordersAll, cxbsNormal, taCenter, cxClasses.vaCenter, False, False,
    IntToStr(TcxGridIndicatorRowItemViewInfo(AViewInfo).GridRecord.Index + 1),
    ACanvas.Font, ACanvas.Font.Color, ACanvas.Brush.Color);
  ADone := True;
end;

function TGridForm.HZtoPY(HZStr: WideString): string;
var
  I: Integer;
  _ss: string;
  C: string;
begin
  Result := '';
  for I := 1 to Length(HZStr) do
  begin
    _ss := HZStr[I];
    if ByteType(_ss, 1) = mbSingleByte then
    begin
      C := _ss;
    end
    else
    begin
      case Word(_ss[1]) shl 8 + word(_ss[2]) of
        $B0A1..$B0C4:
          C := 'A';
        $B0C5..$B2C0:
          C := 'B';
        $B2C1..$B4ED:
          C := 'C';
        $B4EE..$B6E9:
          C := 'D';
        $B6EA..$B7A1:
          C := 'E';
        $B7A2..$B8C0:
          C := 'F';
        $B8C1..$B9FD:
          C := 'G';
        $B9FE..$BBF6:
          C := 'H';
        $BBF7..$BFA5:
          C := 'J';
        $BFA6..$C0AB:
          C := 'K';
        $C0AC..$C2E7:
          C := 'L';
        $C2E8..$C4C2:
          C := 'M';
        $C4C3..$C5B5:
          C := 'N';
        $C5B6..$C5BD:
          C := 'O';
        $C5BE..$C6D9:
          C := 'P';
        $C6DA..$C8BA:
          C := 'Q';
        $C8BB..$C8F5:
          C := 'R';
        $C8F6..$CBF9:
          C := 'S';
        $CBFA..$CDD9:
          C := 'T';
        $CDDA..$CEF3:
          C := 'W';
        $CEF4..$D1B8:
          C := 'X';
        $D1B9..$D4D0:
          C := 'Y';
        $D4D1..$D7F9:
          C := 'Z';
      else
        C := _ss;
      end
    end;
    Result := Result + C;
  end;
end;

procedure TGridForm.ListBoxDblClick(Sender: TObject);
var
  key: Char;
begin
  key := #13;
  ListBoxKeypress(Sender, key);
end;

procedure TGridForm.ListBoxExit(sender: TObject);
begin
  TWinControl(sender).Visible := False;
end;

procedure TGridForm.ListBoxKeypress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    TComboBox(FFocusedControl).Text := ListBox.SelectedItem;
    if Assigned(FNextControl) then
      FNextControl.SetFocus
    else
      FFocusedControl.SetFocus;
    TWinControl(Sender).Visible := False;
  end;
  if Key = #27 then
  begin
    TWinControl(Sender).Visible := False;
    FFocusedControl.SetFocus;
    TComboBox(FFocusedControl).SelectAll;
  end;
end;

procedure TGridForm.setDbgridehDefaultValue(aGrid: TDBGridEh; fitClientWidth:
  Boolean = False);
var
  v_dataset: TDataSet;
  v_oldafteropen: PDataSetNotifyEvent;
  v_method: TMethod;
  p_method: PMethod;
begin
  if not Assigned(Self.FDbgridehList) then
  begin
    FDbgridehList := TStringList.Create;
  end;
  //  if not Assigned(Self.FoldAfterOpenList) then
  //  begin
  //    FoldAfterOpenList := TStringList.Create;
  //  end;

  FDbgridehList.AddObject(aGrid.Name, aGrid);

  if Assigned(aGrid.DataSource) then
  begin
    v_dataset := aGrid.DataSource.DataSet;
    New(p_method);
    //  v_oldafteropen := @v_dataset.AfterOpen;
    v_method := tmethod(v_dataset.AfterOpen);
    p_method^.Code := v_method.Code;
    p_method^.Data := v_method.Data;
    FoldAfterOpenList[FDbgridehList.Count - 1] := p_method;
  end;
  SetDbgridehStyle(aGrid, fitClientWidth);
  //这个来设置自适应列
  if (not fitClientWidth) and Assigned(aGrid.DataSource) then
    aGrid.DataSource.DataSet.AfterOpen := dbgridehAfterOpen;
end;

procedure TGridForm.showGrid(aControl: TWinControl; aNextControl: TWinControl;
  sjj: TCustomADODataSet; gridString: string; control_fieldString: string;
  aCxgridTableView: TcxGridDBTableView; old_string: string);
var
  _control: TWinControl;
  I: Integer;
  jibie: TcxGridLevel;
  aGrid: TcxGrid;
  _left: integer;
  _top: integer;
  _list: TStringList;
  _ss: string;
  _caption: string;
  _field: string;
  _column: TcxGridDBColumn;
  _delimeterIndex: Integer;
  v_str: string;
begin
  FoldString := old_string;
  FFocusedControl := aControl;
  FNextControl := aNextControl;
  Fpopgrid:=  aCxgridTableView;
  fsjj := sjj;
  FfieldString := control_fieldString;
  //得到控件所属的那个窗体
  _control := aControl;
  v_str := trim(TCustomEdit(_control).Text);
  //如果什么都没有输入当然是不进行检索
  if v_str = '' then
    Exit;

  while _control.Parent <> nil do
  begin
    _control := _control.Parent;
  end;
  FParent := _control;

  if not sjj.Active then
  begin
    Application.MessageBox('数据集没有打开', PChar(TCustomForm(_control).caption),
      MB_OK + MB_ICONINFORMATION);
    if aControl.Enabled and aControl.Visible then
      aControl.SetFocus;
    Abort;
  end;

  if sjj.RecordCount = 0 then
  begin
    Application.MessageBox(PChar(aControl.Hint + ' 没有查询到相关名称'), PChar(TCustomForm
      (_control).caption), MB_OK + MB_ICONINFORMATION);
    if aControl.Enabled and aControl.Visible and aControl.CanFocus then
      aControl.SetFocus;
    abort;
  end
  else if sjj.RecordCount = 1 then
  begin
    SetValueFofEdit();
  end
  else if sjj.RecordCount > 1 then
  begin
    try
      SetCxgridDefaultValue(aCxgridTableView,False,False);
      ds_sjj := TDataSource.Create(_control);
      ds_sjj.DataSet := sjj;
      aCxgridTableView.DataController.DataSource := ds_sjj;

      aCxgridTableView.ClearItems;
      _list := TStringList.Create;
      _list.CommaText := gridString;
      for I := 0 to _list.Count - 1 do
      begin
        _ss := trim(_list.Strings[I]);
        _delimeterIndex := pos(':', _ss);
        _caption := Copy(_ss, 1, _delimeterIndex - 1);
        _field := Copy(_ss, _delimeterIndex + 1, Length(_ss) - _delimeterIndex);
        _column := aCxgridTableView.CreateColumn;
        _column.DataBinding.FieldName := _field;
        _column.Width := 60;
        _column.Caption := _caption;
      end;

      jibie := TcxGridLevel(aCxgridTableView.Level);
      aGrid := TcxGrid(jibie.Control);
      aGrid.Width:=aControl.Width;
      aCxgridTableView.ApplyBestFit();
      
      aGrid.Visible := true;
      SetLeftAndTop(aControl, _left, _top);

      aGrid.Left := _left;
      if aGrid.Height <= (_control.ClientHeight - aControl.Height - _top) then
        aGrid.Top := _top + aControl.Height
      else
        aGrid.top := _top - aGrid.Height;
      aGrid.OnExit := agridexit;
      aCxgridTableView.OnKeyPress := TableViewKeyPress_edit;
      aCxgridTableView.OnDblClick := TableViewDblClick;
      aGrid.SetFocus;
    finally
      _list.Free;
    end;
  end;
end;

procedure TGridForm.SetCxgridDefaultValue(aGrid: TcxGridDBTableView;
  isCellSelect: Boolean = True; fitClientWidth: Boolean = True);
var
  i: Integer;
begin
  with aGrid do
  begin
    aGrid.OnCustomDrawIndicatorCell := DrawIndicatorCell;
    OptionsView.CellAutoHeight := true;
    OptionsView.ColumnAutoWidth := fitClientWidth;
    OptionsView.HeaderAutoHeight := True;
    OptionsView.FooterAutoHeight := True;
    //    OptionsView.GroupByBox := False;
    OptionsView.Indicator := True;
    OptionsData.Deleting := False;
    OptionsData.CancelOnExit := False;
    OptionsData.Appending := False;
    OptionsData.DeletingConfirmation := False;
    OptionsData.Editing := False;
    OptionsData.Inserting := False;
    OptionsView.IndicatorWidth := 30;
    OptionsBehavior.GoToNextCellOnEnter := False;
    //    Styles.StyleSheet := YZvw10;
    if OptionsView.Footer then
    begin
      OptionsView.FooterAutoHeight := True;
    end;
  end;
  if not isCellSelect then
  begin
    aGrid.OptionsSelection.CellSelect := False;
    for i := 0 to aGrid.ColumnCount - 1 do
    begin
      with aGrid.Columns[i] do
      begin
        Options.Editing := false;
        //        Options.Filtering := False;
        HeaderAlignmentHorz := taCenter;
      end;
    end;
  end;
  for i := 0 to aGrid.ColumnCount - 1 do
  begin
    with aGrid.Columns[i] do
    begin
      HeaderAlignmentHorz := taCenter;
    end;
  end;
  if not fitClientWidth then
    ApplyBestFit(aGrid);
end;

procedure TGridForm.SetLeftAndTop(acontrol: TWinControl; var aleft: Integer; var
  atop: Integer);
var
  _control: TWinControl;
begin
  aleft := acontrol.Left;
  atop := acontrol.Top;
  _control := acontrol;
  while _control.Parent.Parent <> nil do
  begin
    _control := _control.Parent;
    aleft := aleft + _control.Left;
    atop := atop + _control.Top;
  end;
end;

procedure TGridForm.SetStyleToForm(aForm: TForm; isCellSelect: Boolean);
var
  i: Integer;
begin
  for i := 0 to aForm.ComponentCount - 1 do
  begin
    if aForm.Components[i] is TcxGridDBTableView then
    begin
      SetCxgridDefaultValue(TcxGridDBTableView(aForm.Components[i]),
        isCellSelect);
    end;

    if aForm.Components[i] is TDBGridEh then
    begin
      setDbgridehDefaultValue(TDBGridEh(aForm.Components[i]));
    end;
  end;
end;

procedure TGridForm.SetValueFofEdit();
var
  _list: TStringList;
  I: Integer;
  _ss: string;
  _dilIndex: integer;
  _editName: string;
  _editField: string;
  _zujian: tcomponent;
begin
  //  TCustomEdit(FFocusedControl).Text := FoldString + Fsjj.FieldByName(FfieldString).AsString;

  try
    _list := TStringList.Create;
    _list.CommaText := FfieldString;
    for I := 0 to _list.Count - 1 do
    begin
      _ss := _list.Strings[I];
      _dilIndex := Pos(':', _ss);
      _editName := Copy(_ss, 1, _dilIndex - 1);
      _editField := Copy(_ss, _dilIndex + 1, Length(_ss) - _dilIndex);
      _zujian := FParent.FindComponent(_editName);
      if _zujian <> nil then
        TCustomEdit(_zujian).Text := FoldString + Fsjj.FieldByName(_editField).AsString;
    end;
  finally
    _list.Free;
  end;
  if Assigned(FNextControl) then
    FNextControl.SetFocus
  else
    FFocusedControl.SetFocus;
end;

procedure TGridForm.SetValueFofGrid;
begin
  FFocusedGrid.Controller.FocusedItem.EditValue := FoldString + Fsjj.FieldByName
    (Ffield).AsString;
  if FnextColumnIndex <> -1 then
  begin
    TcxGridLevel(FFocusedGrid.Level).Control.SetFocus;
    FFocusedGrid.Controller.FocusedItemIndex := FnextColumnIndex;
  end
  else
    TcxGridLevel(FFocusedGrid.Level).Control.SetFocus;
end;

procedure TGridForm.showGrid(aControl, popgrid: TcxGridDBTableView;
  aNextColumnIndex: Integer; sjj: TCustomADODataSet; gridString: string; aField:
  string; old_string: string);
var
  _control: TWinControl;
  I: Integer;
  jibie: TcxGridLevel;
  aGrid: TcxGrid;
  _left: integer;
  _top: integer;
  _list: TStringList;
  _ss: string;
  _caption: string;
  _field: string;
  _column: TcxGridDBColumn;
  _delimeterIndex: Integer;
begin
  FoldString := old_string;
  FFocusedGrid := aControl;
  Fpopgrid := popgrid;
  FnextColumnIndex := aNextColumnIndex;
  fsjj := sjj;
  Ffield := aField;
  //得到控件所属的那个窗体
  _control := TcxGridLevel(aControl.Level).Control;
  while _control.Parent <> nil do
  begin
    _control := _control.Parent;
  end;

  if not sjj.Active then
  begin
    Application.MessageBox('数据集没有打开', PChar(TCustomForm(_control).caption),
      MB_OK + MB_ICONINFORMATION);
    Abort;
  end;

  if sjj.RecordCount = 0 then
  begin
    Application.MessageBox('没有查询到相关名称', PChar(TCustomForm(_control).caption),
      MB_OK + MB_ICONINFORMATION);
    abort;

  end
  else if sjj.RecordCount = 1 then
  begin
    SetValueFofGrid();
  end
  else if sjj.RecordCount > 1 then
  begin
    try
      SetCxgridDefaultValue(popgrid, False);
      if not Assigned(sjj) then
        ds_sjj := TDataSource.Create(_control);
      ds_sjj.DataSet := sjj;
      popgrid.DataController.DataSource := ds_sjj;

      popgrid.ClearItems;
      _list := TStringList.Create;
      _list.CommaText := gridString;
      for I := 0 to _list.Count - 1 do
      begin
        _ss := trim(_list.Strings[I]);
        _delimeterIndex := pos(':', _ss);
        _caption := Copy(_ss, 1, _delimeterIndex - 1);
        _field := Copy(_ss, _delimeterIndex + 1, Length(_ss) - _delimeterIndex);
        _column := popgrid.CreateColumn;
        _column.DataBinding.FieldName := _field;
        _column.Width := 60;
        _column.Caption := _caption;
      end;

      jibie := TcxGridLevel(popgrid.Level);
      aGrid := TcxGrid(jibie.Control);
      aGrid.Visible := true;
      SetLeftAndTop(TcxGridLevel(aControl.Level).Control, _left, _top);

      for I := 0 to aControl.Controller.FocusedItemIndex - 1 do
      begin
        _left := _left + aControl.Columns[I].Width;
      end;
      aControl.OptionsView.HeaderHeight := 22;
      aControl.OptionsView.DataRowHeight := 22;
      _top := _top + aControl.OptionsView.HeaderHeight + aControl.OptionsView.DataRowHeight
        * aControl.DataController.RecNo;
      aGrid.Left := _left;
      aGrid.top := _top;
      aGrid.OnExit := agridexit;
      popgrid.OnKeyPress := TableViewKeyPress_grid;
      popgrid.OnDblClick := TableViewDblClick;
      aGrid.SetFocus;
    finally
      _list.Free;
    end;
  end;
end;

procedure TGridForm.showGridEx(aControl, aNextControl: TWinControl; sjj:
  TCustomADODataSet; gridString, control_fieldString: string; old_string: string
  = '');
var
  _control: TWinControl;
  I: Integer;
  jibie: TcxGridLevel;
  aGrid: TcxGrid;
  _left: integer;
  _top: integer;
  _list: TStringList;
  _ss: string;
  _caption: string;
  _field: string;
  _column: TcxGridDBColumn;
  _delimeterIndex: Integer;
  v_str: string;
  v_grideh: TDBGridEh;
  V_sjj: TDataSource;
  v_column: TColumnEh;
begin
  FoldString := old_string;
  FFocusedControl := aControl;
  FNextControl := aNextControl;
  fsjj := sjj;
  FfieldString := control_fieldString;
  //得到控件所属的那个窗体
  _control := aControl;
  v_str := trim(TCustomEdit(_control).Text);
  //如果什么都没有输入当然是不进行检索
  if v_str = '' then
    Exit;

  while _control.Parent <> nil do
  begin
    _control := _control.Parent;
  end;
  FParent := _control;

  if not sjj.Active then
  begin
    Application.MessageBox('数据集没有打开', PChar(TCustomForm(_control).caption),
      MB_OK + MB_ICONINFORMATION);
    if aControl.Enabled and aControl.Visible then
      aControl.SetFocus;
    Abort;
  end;

  if sjj.RecordCount = 0 then
  begin
    Application.MessageBox('没有查询到相关名称', PChar(TCustomForm(_control).caption),
      MB_OK + MB_ICONINFORMATION);
    if aControl.Enabled and aControl.Visible then
      aControl.SetFocus;
    abort;
  end
  else if sjj.RecordCount = 1 then
  begin
    SetValueFofEdit();
  end
  else if sjj.RecordCount > 1 then
  begin
    try
      v_grideh := TDBGridEh.Create(FParent);
      v_grideh.Parent := FParent;
      V_sjj := TDataSource.Create(_control);
      V_sjj.DataSet := sjj;
      v_grideh.DataSource := V_sjj;

      SetDbgridehStyle(v_grideh, true);

      v_grideh.Columns.Clear;

      _list := TStringList.Create;
      _list.CommaText := gridString;
      for I := 0 to _list.Count - 1 do
      begin
        _ss := trim(_list.Strings[I]);
        _delimeterIndex := pos(':', _ss);
        _caption := Copy(_ss, 1, _delimeterIndex - 1);
        _field := Copy(_ss, _delimeterIndex + 1, Length(_ss) - _delimeterIndex);

        v_column := v_grideh.Columns.Add;
        v_column.FieldName := _field;
        v_column.Title.Caption := _caption;
        v_column.OptimizeWidth;

      end;
      v_grideh.Visible := true;
      SetLeftAndTop(aControl, _left, _top);

      v_grideh.Left := _left;
      if v_grideh.Height <= (_control.ClientHeight - aControl.Height - _top)
        then
        v_grideh.Top := _top + aControl.Height
      else
        v_grideh.top := _top - aControl.Height;
      v_grideh.OnExit := agridexit;
      v_grideh.OnKeyPress := DbgridKeyPress;
      v_grideh.OnDblClick := DbgridDblClick;
      v_grideh.SetFocus;
    finally
      _list.Free;
    end;
  end;
end;

procedure TGridForm.showGrid(aControl: TCustomCombo; aNextControl: TWinControl);
var
  _control: TWinControl;
  _items: TStrings;
  _ss: string;
  _xuanxiang: string;
  I: Integer;
  _left: Integer;
  _top: Integer;
begin
  FFocusedControl := aControl;
  FNextControl := aNextControl;
  //得到控件所属的那个窗体
  _control := aControl;
  while _control.Parent <> nil do
  begin
    _control := _control.Parent;
  end;

  _ss := trim(TComboBox(aControl).text);
  //如果什么都没有输入当然是不进行检索
  if _ss = '' then
    Exit;

  _items := TComboBox(aControl).Items;
  if _items.Count = 0 then
  begin
    Application.MessageBox(pchar(aControl.hint + '列表中没有选项'), pchar(TCustomForm(_control).caption),
      MB_OK + MB_ICONINFORMATION);
    Abort;
  end
  else if _items.Count = 1 then
  begin
    _xuanxiang := Trim(_items.Strings[0]);
    if (Pos(_ss, _xuanxiang) > 0) or (Pos(UpperCase(_ss), HZtoPY(_xuanxiang)) >
      0) then
    begin
      TComboBox(FFocusedControl).ItemIndex := 0;
      if Assigned(FNextControl) then
      begin
        if FNextControl.CanFocus then
          FNextControl.SetFocus;
      end
      else
      begin
        if FFocusedControl.CanFocus then
          FFocusedControl.SetFocus;
      end;

    end
    else
    begin
      Application.MessageBox(pchar('在' + aControl.hint +
        '列表中没有查找到对应的名称'), pchar(TCustomForm(_control).caption), MB_OK +
        MB_ICONINFORMATION);
      if aControl.CanFocus then
        aControl.SetFocus;
      Abort;
    end;

  end
  else if _items.Count > 1 then
  begin
    //如果已经输入的值 已经在选项中了 就不必进行检索了
    for I := 0 to TComboBox(aControl).Items.Count - 1 do
    begin
      if _ss = Trim(TComboBox(aControl).Items.Strings[I]) then
      begin
        exit;
      end;
    end;

    if ListBox = nil then
    begin
      ListBox := TRzListBox.Create(_control);
      ListBox.Parent := _control;
      ListBox.Height := 120;
      ListBox.Width := aControl.Width;
      ListBox.Visible := False;
      ListBox.Font.Charset := ANSI_CHARSET;
      ListBox.Font.Color := clWindowText;
      ListBox.Font.Name := '微软雅黑';
      ListBox.font.Orientation := 0;
      ListBox.Font.Pitch := fpDefault;
      ListBox.Font.Size := 10;
    end;
    ListBox.Items.Clear;
    for I := 0 to _items.Count - 1 do
    begin
      _xuanxiang := Trim(_items.Strings[I]);
      if (Pos(_ss, _xuanxiang) > 0) or (Pos(UpperCase(_ss), HZtoPY(_xuanxiang))
        > 0) then
      begin
        ListBox.Add(_xuanxiang);
      end;
    end;
    if ListBox.Count = 0 then
    begin
      Application.MessageBox(pchar('在' + aControl.hint +
        '列表中没有查找到对应的名称'), pchar(TCustomForm(_control).caption), MB_OK +
        MB_ICONINFORMATION);
      if aControl.CanFocus then
        aControl.SetFocus;
      Abort;
    end
    else if listbox.Count = 1 then
    begin
      TComboBox(FFocusedControl).Text := ListBox.Items[0];
      if Assigned(FNextControl) then
      begin
        if FNextControl.CanFocus then
          FNextControl.SetFocus ;
      end;
    end
    else if ListBox.Count > 1 then
    begin
      ListBox.Visible := true;
      SetLeftAndTop(aControl, _left, _top);

      ListBox.Left := _left;
      if ListBox.Height <= (_control.ClientHeight - aControl.Height - _top) then
        ListBox.Top := _top + aControl.Height
      else
        ListBox.top := _top - ListBox.Height;
      ListBox.OnExit := ListBoxExit;
      ListBox.OnKeyPress := ListBoxKeypress;
      ListBox.OnDblClick := ListBoxDblClick;
      ListBox.SetFocus;
      ListBox.Selected[0]:=True;
    end;
  end;

end;

procedure TGridForm.TableViewKeyPress_grid(sender: TObject; var key: Char);
begin
  if key = #13 then
    SetValueFofGrid;

  if key = #27 then
    TcxGridLevel(Fpopgrid.Level).Control.Visible := False;

end;

procedure TGridForm.setRzbuttonAndPanelStyle(aForm: TCustomForm);
var
  I: Integer;
begin
  for I := 0 to aForm.ComponentCount - 1 do
  begin
    if aForm.Components[I] is TRzButton then
    begin
      TRzButton(aForm.Components[I]).Color := $00A17018;
      TRzButton(aForm.Components[I]).HotTrack := true;
      TRzButton(aForm.Components[I]).HotTrack := true;
      TRzButton(aForm.Components[I]).Font.Charset := ANSI_CHARSET;
      TRzButton(aForm.Components[I]).Font.Color := clWhite;
      TRzButton(aForm.Components[I]).Font.Height := -15;
      TRzButton(aForm.Components[I]).Font.Name := '微软雅黑';
      TRzButton(aForm.Components[I]).Font.Orientation := 0;
      TRzButton(aForm.Components[I]).Font.Size := 11;
    end;

    if aForm.Components[I] is TRzPanel then
    begin
      TRzPanel(aForm.Components[I]).Color := $00FEECCD;
    end;

    if aForm.Components[I] is TPanel then
    begin
      TPanel(aForm.Components[I]).Color := $00FEECCD;
    end;

  end;
end;

initialization
begin
  GridForm := TGridForm.Create(Application);
end

end.

