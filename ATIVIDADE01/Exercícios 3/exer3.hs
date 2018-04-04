fibo = 1 : 2 : prox fibo
     where
       prox (x1:t@(x2:resto)) = (x1+x2) : prox t

main = do
   let lista2 = take 5 fibo 

   print lista2