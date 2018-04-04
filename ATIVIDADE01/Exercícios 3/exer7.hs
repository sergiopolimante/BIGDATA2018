collatz :: Integer -> Integer
collatz x
  |(x `mod` 2) == 0 =  x `div` 2
  |otherwise = (3*x+1)

tamanho_collatz :: Integer -> Int
tamanho_collatz a = length $ takeWhile (/=1) (iterate collatz a)


main = do 
   print ( tamanho_collatz 1)


