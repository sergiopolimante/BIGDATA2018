soma :: Integer -> Integer
soma n = soma_rec n 0
  where
    soma_rec 0 r = r
    soma_rec n r = soma_rec (n`div`10) (r + (n `mod` 10))

main = do
  print $ soma 5555