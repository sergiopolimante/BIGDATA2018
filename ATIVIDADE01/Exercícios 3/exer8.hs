import Data.List

collatz :: Integer -> Integer
collatz x
  |(x `mod` 2) == 0 =  x `div` 2
  |otherwise = (3*x+1)

tamanho_collatz :: Integer -> Int
tamanho_collatz a = length $ takeWhile (/=1) (iterate collatz a)


max_collatz = elemIndices (maximum (map tamanho_collatz [1..100])) (map tamanho_collatz [1..100])


main = do 
   print ( max_collatz)


