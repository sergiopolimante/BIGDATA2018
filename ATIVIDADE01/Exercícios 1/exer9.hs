 main = do
   let lista1 = [i | i <- [1..2018], ((i `rem` 400 == 0) || ((i `rem` 4 == 0) && (i `rem` 100 /= 0))) ]
   

   print (take 10 lista1)