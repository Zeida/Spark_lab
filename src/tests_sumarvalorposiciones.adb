--  Add as many tests as you want to ensure that the calculator
--  behavior is correct in all cases.

with Ada.Text_IO;   use Ada.Text_IO;
with Pkg_SumarValorPosiciones;  use Pkg_SumarValorPosiciones;
with system.Assertions;

procedure Tests_SumarValorPosiciones is
   procedure Test_1 is
      Table : Constant T_Table (1 .. 5) := (5, 4, 3, 2, 1);
      Impar : Constant Opcion:= 1;
   begin
      Put ("Test 1: SumarValorPosiciones....................................");

      SumarValorPosiciones (Table, Impar);
      pragma Assert (Pkg_SumarValorPosiciones.R = 9);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      Table : Constant T_Table (1 .. 5) := (0, 4, 0, 2, 0);
      Par: Constant Opcion := 0;
   begin
      Put ("Test 2: SumarValorPosiciones....................................");

      SumarValorPosiciones (Table, Par);
      pragma Assert (Pkg_SumarValorPosiciones.R = 6);
      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      Table : Constant T_Table (1 .. 5) := (0, 4, 0, 2, 0);
      Impar : Constant Opcion:= 1;
   begin
      Put ("Test 3: SumarValorPosiciones....................................");
      SumarValorPosiciones (Table, Impar);
      pragma Assert (Pkg_SumarValorPosiciones.R = 0);

      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      Table : Constant T_Table (1 .. 5) := (5, 4, 3, 4, 1);
      Impar : Constant Opcion:= 1;
   begin
      Put ("Test 4: SumarValorPosiciones....................................");

      SumarValorPosiciones (Table, Impar);
      pragma Assert (Pkg_SumarValorPosiciones.R = 9);
      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
      Table : Constant T_Table (1 .. 14) := (5, 4, 3, 4, 1, 6, 7, 9, 9, 10, 0, 9, 10, 10);
      Impar : Constant Opcion:= 1;
   begin
      Put ("Test 5: SumarValorPosiciones....................................");

      SumarValorPosiciones (Table, Impar);
      pragma Assert (Pkg_SumarValorPosiciones.R = 35);
      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
      Table : Constant T_Table (1 .. 14) := (5, 4, 3, 4, 1, 6, 7, 9, 9, 10, 0, 9, 10, 10);
      Par : Constant Opcion:= 0;
   begin
      Put ("Test 6: SumarValorPosiciones....................................");

      SumarValorPosiciones (Table, Par);
      pragma Assert (Pkg_SumarValorPosiciones.R = 52);
      Put_Line ("OK");
   end Test_6;

   procedure Test_7 is
      Table : Constant T_Table (1 .. 2) := (0, 0);
      Par : Constant Opcion:= 0;
   begin
      Put ("Test 7: SumarValorPosiciones....................................");

      SumarValorPosiciones (Table, Par);
      pragma Assert (Pkg_SumarValorPosiciones.R = 0);

      Put_Line ("OK");
   end Test_7;

      procedure Test_8 is
      Table : Constant T_Table (3 .. 14) := (3, 4, 1, 6, 7, 9, 9, 10, 0, 9, 10, 10);
      Par : Constant Opcion:= 0;
   begin
      Put ("Test 8: SumarValorPosiciones rango incorrecto...................");

      SumarValorPosiciones (Table, Par);
      pragma Assert (Pkg_SumarValorPosiciones.R = 52);

      Put_Line ("Fallo");
   exception
      when system.Assertions.Assert_Failure =>
         Put_Line("OK");

   end Test_8;

begin

   Put_Line ("********************* Tests_SumarValorPosiciones");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   Test_6;
   Test_7;
   Test_8;

end Tests_SumarValorPosiciones;
