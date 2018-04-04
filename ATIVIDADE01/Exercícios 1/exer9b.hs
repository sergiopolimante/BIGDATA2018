 main = do
   let lista1 = [i | i <- [1..2018], ((i `rem` 400 == 0) || ((i `rem` 4 == 0) && (i `rem` 100 /= 0))) ]
   let lista2 = [lista1!!i | i <- [(length(lista1)-10) .. length(lista1)-1] ]

   print (lista2)