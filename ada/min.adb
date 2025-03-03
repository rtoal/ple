with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure Min is

  -- Define a generic Minimum function callable on any type.
  -- The second parameter is a default parameter.

  generic
    type T is private;
    with function "<"(X: T; Y: T) return Boolean is <>;
  function Minimum(X: T; Y: T) return T;

  function Minimum(X: T; Y: T) return T is
  begin
    if X < Y then
      return X;
    else
      return Y;
    end if;
  end Minimum;

  -- Make a user defined type called A, with "<" and Put operations.

  type A is record
    X: Integer;
    Y: Integer;
  end record;

  function "<"(X: A; Y: A) return boolean is
  begin
      return X.X + X.Y < Y.X + Y.Y;
  end "<";

  procedure Put (X: A) is
  begin
    Put ("(");
    Put (X.X, 0);
    Put (",");
    Put (X.Y, 0);
    Put (")");
  end Put;

  -- Instantiate a few

  function Min_Integer is new Minimum(Integer);
  function Min_Float is new Minimum(Float);
  function Min_A is new Minimum(A);

  -- Show off the calls

begin
  Put(Min_Integer(4, 5), 0); New_Line;
  Put(Min_Float(3.3, 4.1), 0); New_Line;
  Put (Min_A(A'(1,3), A'(6,0))); New_Line;
  Put (Min_A(A'(5,5), A'(6,0))); New_Line;
  Put (Min_A(A'(9,1), A'(2,1))); New_Line;
  Put (Min_A(A'(2,3), A'(-6,0))); New_Line;
end Min;
