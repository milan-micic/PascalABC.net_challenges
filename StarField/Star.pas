unit Star;

interface

uses GraphABC;

type
  _Star = class
    
  private
    _x, _y, _z, _pz : integer;
      
  public
    procedure update();
    procedure show();
    constructor Create();
end;

implementation

function map(n:real; start1:real; stop1:real; start2:real; stop2:real):real;
begin
// ((n-start1)/(stop1-start1))*(stop2-start2)+start2  
  map := ((n-start1)/(stop1-start1))*(stop2-start2)+start2;
end;
  
procedure _Star.update();
begin
  
end;

procedure _Star.show();
var
  sx,sy,r,px,py: real;
begin
  SetPenColor(clWhite);
  SetBrushColor(clWhite);

//  sx := map(_x/_z, 0, 1, 0, Window.Width);
//  sy := map(_y/_z, 0, 1, 0, Window.Height);
//
//  r := map(_z, 0, Window.Width, 16, 0);
//  circle(Round(sx), Round(sy), Round(r));
  Circle(_x,_y,8);
  Writeln(_x,_y);
end;

constructor _Star.Create();
  begin
    _x:=Random(Window.Width);
    _y:=Random(Window.Height);
    _z:=Random(Window.Width);
    _pz:=_z;
  end;

begin
  writeln(map(5,100,200,2,10));
end.