fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial 1 = 1
fatorial n = fatorial' n 1
  where
    fatorial' 1 r = r
    fatorial' n r = fatorial' (n-1) (n*r)

coefbi :: Integer -> Integer -> Integer
coefbi n k = (fatorial n) `div` ((fatorial k)*(fatorial (n - k)))

main = do
  print $ coefbi 5 2