conversor :: Char -> Integer
conversor c = Read c :: Integer


main = do
   let str = "0123456789"
   

   let listaInt = map conversor str

   --let lista1 = [read str!!i :: Integer | i <- [0.. 9]]



   
   print listaInt 