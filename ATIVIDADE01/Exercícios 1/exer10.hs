 main = do
   let lista1 = [i | i <- [1..2018], ((i `rem` 400 == 0) || ((i `rem` 4 == 0) && (i `rem` 100 /= 0))) ]
   
   --let lista2 = [(lista1!!i,lista1!!j) | i <- [0.. ((length lista1)`div`2)-1], j <- [((length lista1)`div`2).. (length lista1)-1]]

   let lista2 = [(lista1!!(i),lista1!!(i + length(lista1)`div`2)) | i <- [0.. ((length lista1)`div`2)-1]]

   print (lista2)