--  Add as many tests as you want to ensure that the calculator
--  behavior is correct in all cases.

with Ada.Text_IO;   use Ada.Text_IO;
with Pkg_Find;  use Pkg_Find;

procedure Tests_Find is

   procedure Test_1 is
      Table : constant T_Table (1 .. 5) := (5, 4, 3, 2, 1);
      N : constant Natural := 1;
      B: Boolean := False;
   begin
      Put ("Test 1: Find a 1....................................");
      Find (Table, N, B);
      pragma Assert (B);
      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      Table : constant T_Table (1 .. 5) := (5, 4, 3, 2, 1);
      N : constant Natural := 0;
      B: Boolean := False;
   begin
      Put ("Test 2: Find a 0 ...................................");

      Find (Table, N, B);
      pragma Assert (B=False);
      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      Table :constant T_Table (1 .. 5) := (5, 4, 3, 2, 1);
      N : constant Natural := 8;
      B: Boolean := False;
   begin
      Put ("Test 3: Find a number that's not in ................");
      Find (Table, N, B);
      pragma Assert (B = False);
      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      Table : constant T_Table (1 .. 5) := (5, 4, 3, 4, 1);
      N : constant Natural := 4;
      B: Boolean := False;
   begin
      Put ("Test 4: Find........................................");
      Find (Table, N, B);
      pragma Assert (B);
      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
      Table : constant T_Table (1 .. 9) := (5, 4, 3, 4, 1, Natural'Last, 100, 200, Natural'First);
      N : constant Natural := Natural'Last;
      B: Boolean := False;
   begin
      Put ("Test 5: Find........................................");
      Find (Table, N, B);
      pragma Assert (B);
      Put_Line ("OK");
   end Test_5;

begin

   Put_Line ("********************* Tests_Find");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;

end Tests_Find;
