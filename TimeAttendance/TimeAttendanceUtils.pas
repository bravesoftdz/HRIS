unit TimeAttendanceUtils;

interface

uses
  SysUtils, DateUtils, cxDropDownEdit, HolidayObj, TimeAttendanceDataMod,
  CalendarInterface, Forms;

procedure PopulateYear(const combo: TcxComboBox);
procedure GetDateParams(const year, month: integer; var fromDate, untilDate: TDate);
procedure RefreshMainForm;

function Holiday: THoliday;

const
  BASE_YEAR = 2014;

implementation

procedure PopulateYear(const combo: TcxComboBox);

var
  mm: Word;
  yy: Word;
  dd: Word;
  i: integer;
begin
  DecodeDate(Date, yy, mm, dd);

  combo.Clear;

  for i := yy downto BASE_YEAR do
      combo.Properties.Items.Add(IntToStr(i));

  combo.ItemIndex := 0;
end;

procedure GetDateParams(const year, month: integer; var fromDate, untilDate: TDate);
begin
  fromDate := EncodeDate(year,month,1);
  untilDate := EndOfAMonth(year,month);
end;

function Holiday: THoliday;
begin
  Result := dmTimeAttendance.Holiday;
end;

procedure RefreshMainForm;
var
  i: Integer;
  iCalendar: ICalendarInterface;
begin
  for i := 0 to Screen.FormCount - 1 do
    if Supports(Screen.Forms[i], ICalendarInterface, iCalendar) then
      iCalendar.UpdateRow;
end;

end.
