--  Add as many tests as you want to ensure that the calculator
--  behavior is correct in all cases.

with Ada.Text_IO;   use Ada.Text_IO;
with Pkg_Replace;  use Pkg_Replace;

procedure Tests_Replace is
   procedure Test_1 is
      Table : T_Table (1 .. 5) := (5, 4, 3, 2, 1);
      B : Constant Natural:= 1;
      Count: Natural:=0;
   begin
      Put ("Test 1: Replace....................................");

      Replace (Table, B, Count);
      pragma Assert (Table(5) = 0);
      pragma Assert (Count = 1);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      Table : T_Table (1 .. 5) := (0, 4, 0, 2, 0);
      B : Constant Natural:= 0;
      Count: Natural:=0;
   begin
      Put ("Test 2: Replace....................................");

      Replace (Table, B, Count);
      for I in Table'Range loop
         pragma Assert (Table(I) = 0);
      end loop;
      pragma Assert (Count = 5);
      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      Table : T_Table (1 .. 5) := (0, 4, 0, 2, 0);
      B : Constant Natural:= 4;
      Count: Natural:=1;
   begin
      Put ("Test 3: Replace....................................");
      Replace (Table, B, Count);
      pragma Assert (Table(2) = 0);
      pragma Assert (Count = 1);

      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      Table : T_Table (1 .. 5) := (5, 5, 5, 5, 5);
      B : Constant Natural:=5 ;
      Count: Natural:=5;
   begin
      Put ("Test 4: Replace....................................");

      Replace (Table, B, Count);
      for I in Table'Range loop
         pragma Assert (Table(I) = 0);
      end loop;
      pragma Assert (Count = 5);
      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
      Table : T_Table (1 .. 14) := (5, 4, 3, 4, 1, 6, 7, 9, 9, 10, 0, 9, 10, 10);
      B : Constant Natural:= 10;
      Count: Natural:=3;
   begin
      Put ("Test 5: Replace....................................");

      Replace (Table, B, Count);
      pragma Assert (Table(14) = 0);
      pragma Assert (Count = 3);
      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
      Table : T_Table (1 .. 14) := (5, 4, 3, 4, 1, 6, 7, 9, 9, 10, 0, 9, 10, 10);
      B : Constant Natural:= 1;
      Count: Natural:=1;
   begin
      Put ("Test 6: Replace....................................");

      Replace (Table, B, Count);
      pragma Assert (Table(5) = 0);
      pragma Assert (Count = 1);
      Put_Line ("OK");
   end Test_6;

   procedure Test_7 is
      Table : T_Table (1 .. 2) := (0, 0);
      B : Constant Natural:= 0;
      Count: Natural:=0;
   begin
      Put ("Test 7: Replace....................................");

      Replace (Table, B, Count);
      pragma Assert (Table(1) = 0);
      pragma Assert (Table(2) = 0);
      pragma Assert (Count = 2);

      Put_Line ("OK");
   end Test_7;

   procedure Test_8 is
      Table : T_Table (1 .. 12) := (3, 4, 1, 6, 7, 9, 9, 10, 0, 9, 10, 10);
      B : Constant Natural:= 3;
      Count: Natural:=1;
   begin
      Put ("Test 8: Replace ...................................");

      Replace (Table, B, Count);
      pragma Assert (Table(1) = 0);
      pragma Assert (Count = 1);
      Put_Line("OK");

   end Test_8;

begin

   Put_Line ("********************* Tests_Replace");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   Test_6;
   Test_7;
   Test_8;

end Tests_Replace;
