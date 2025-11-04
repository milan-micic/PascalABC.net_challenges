unit Star;

interface

var speed: integer;

function map(n:real; 
             start1:real; 
             stop1:real; 
             start2:real; 
             stop2:real):integer;

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

uses GraphABC;

function map(n:real; 
              start1:real; 
              stop1:real; 
              start2:real; 
              stop2:real):integer;
begin
// ((n-start1)/(stop1-start1))*(stop2-start2)+start2  
  map := trunc(((n-start1)/(stop1-start1))*(stop2-start2)+start2);
end;
  
procedure _Star.update();
begin
  _z:=_z - speed;
  if _z < 1 then begin
    _x:=Random(-Window.Width,Window.Width);
    _y:=Random(-Window.Height,Window.Height);
    _z:=Window.Width;
    _pz:=_z;
  end;
end;

procedure _Star.show();
var
  sx,sy,r,px,py: integer;
begin
  
  SetBrushColor(clWhite);
  SetPenWidth(0);

  sx := map(_x/_z, 0, 1, 0, Window.Width);
  sy := map(_y/_z, 0, 1, 0, Window.Height);

  r := map(_z, 0, Window.Width, 4, 0);
  
//  circle(sx, sy, r);

  px := map(_x/_pz, 0,1,0,Window.Width);
  py := map(_y/_pz, 0,1,0,Window.Height);

  _pz:=_z;

  SetPenColor(clWhite);
  SetPenWidth(r);
  line(px,py,sx,sy);
end;

constructor _Star.Create();
  begin
    
    _x:=Random(-Window.Width,Window.Width);
    _y:=Random(-Window.Height,Window.Height);
    _z:=Random(Window.Width);
    _pz:=_z;
    
  end;
  
initialization

  speed:=0;
  
end.