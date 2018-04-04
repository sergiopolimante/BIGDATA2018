soma :: Integer -> Integer
soma n = soma_rec n 0
  where
    soma_rec 0 r = r
    soma_rec n r = soma_rec (n`div`10) (r + (n `mod` 10))


main = do

   let fibo = 1 : 2 : prox fibo
      where
         prox (x1:t@(x2:resto)) = (x1+x2) : prox t

   let lista2 = takeWhile (<4000000) fibo
   let lista3 = filter even lista2  
   print lista3