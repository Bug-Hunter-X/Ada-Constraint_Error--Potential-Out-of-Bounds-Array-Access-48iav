```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   Last_Index : Integer := 0; 
begin
   for I in My_Arr'Range loop
      if My_Arr(I) = 5 then
         Last_Index := I; 
         exit;
      end if;
   end loop;
   -- Now we access array with a safe index
   if Last_Index > 0 then
      Put_Line(Integer'Image(My_Arr(Last_Index)));
   else
      Put_Line("Element 5 not found");
   end if;   
exception
    when others =>
       Put_Line("An unexpected error occurred");
end Example_Solution;
```