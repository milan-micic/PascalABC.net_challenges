uses Star,GraphABC;

var zvezda: array[0..10] of _Star;

begin
  SetWindowSize(400, 400);
  ClearWindow(clBlack);
  
  for var i:integer:=0 to 10 do begin
  zvezda[i] := new _Star();
  zvezda[i].show();
  end;
  
end.