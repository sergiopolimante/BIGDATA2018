divisivel20x :: Integer -> Bool
divisivel20x a = isNull
   where
      isNull = null b
      b = [i| i <- [20 `mod` x | x <- [1..a]], i /= 0]

main = do
   print $ divisivel20x 19