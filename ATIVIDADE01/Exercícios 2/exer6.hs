soma :: Integer -> Integer
soma n = soma_rec n 0
  where
    soma_rec 0 r = r
    soma_rec n r = soma_rec (n`div`10) (r + (n `mod` 10))

persist :: Integer-> Integer
persist m = pers_rec m 1 0
   where
    pers_rec m 0 c = c
    pers_rec m r c = pers_rec (soma m) (soma(m) `div` 10) (c + 1)

main = do
  print $ persist 11