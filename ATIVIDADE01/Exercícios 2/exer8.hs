fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial 1 = 1
fatorial n = fatorial' n 1
  where
    fatorial' 1 r = r
    fatorial' n r = fatorial' (n-1) (n*r)

ijTriang :: Integer -> Integer -> Integer
ijTriang n k = (fatorial n) `div` ((fatorial k)*(fatorial (n - k)))

main = do
  print $ ijTriang 2 1