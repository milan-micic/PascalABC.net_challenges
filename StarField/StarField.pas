uses Star,GraphABC;

var zvezda: array[0..2500] of _Star;
  fEND: boolean;
  mouseX: integer;

procedure MouseMove(x,y,mb:integer);
  begin
    mouseX:= x;
  end;
  
begin
  
  SetWindowSize(800, 800);
  Coordinate.SetOrigin(Trunc(Window.Width/2), Trunc(Window.Height/2));
  
  for var i:integer := low(zvezda) to high(zvezda) do begin
    zvezda[i] := new _Star();
  end;
  
  repeat
    
    OnMouseMove:=MouseMove;
    speed:= map(mouseX,0,Window.Width,0,50)+1;

    LockDrawing;
    ClearWindow(clBlack);
    for var i:integer := low(zvezda) to high(zvezda) do begin
      zvezda[i].update();
      zvezda[i].show();
    end;
    Redraw;
  until (fEND);
end.