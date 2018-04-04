main = do
   print ([[ if i==j then 1 else 0 | i <- [1..5]] | j <- [1..5]])