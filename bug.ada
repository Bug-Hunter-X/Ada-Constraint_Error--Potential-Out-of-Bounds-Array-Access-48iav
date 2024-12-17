```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in My_Arr'Range loop
      if My_Arr(I) = 5 then
         exit;
      end if;
   end loop;
   --  Here, the loop might exit before reaching the end of the array 
   -- If the condition My_Arr(I) = 5 is met early
   -- Thus accessing My_Arr(I) after loop may raise Constraint_Error if I is out of bounds
   Put_Line(Integer'Image(My_Arr(I)));
   -- Potential Constraint_Error if loop exits early 
 exception
    when Constraint_Error =>
       Put_Line("Constraint Error: Index out of bounds");
end Example;
```