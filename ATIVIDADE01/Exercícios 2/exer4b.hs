ehPrimo :: Integer -> Bool
ehPrimo 1 = False
ehPrimo 2 = True
ehPrimo n = ehPrimo_rec n (n-1) (n `rem` (n-1)) 
   where
      ehPrimo_rec n r 0 = False 
      ehPrimo_rec n r d = ehPrimo_rec n (r-1) (n `rem` r) 


main = do
  print(ehPrimo 97)