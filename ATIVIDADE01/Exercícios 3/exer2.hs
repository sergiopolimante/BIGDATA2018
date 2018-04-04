divisivel20x :: Integer -> Bool
divisivel20x a = isNull
   where
      isNull = null b
      b = [i| i <- [a `mod` x | x <- [1..20]], i/=0]

divisivel20 :: Integer -> Bool
divisivel20 a = isNull
   where
      isNull = null b
      b = [i| i <- [1..20], a `mod` i /=0]

divisivel20xGuard :: Integer -> Bool
divisivel20xGuard a  
   |a `mod` 20 /= 0 = False
   |a `mod` 19 /= 0 = False
   |a `mod` 18 /= 0 = False
   |a `mod` 17 /= 0 = False
   |a `mod` 16 /= 0 = False
   |a `mod` 15 /= 0 = False
   |a `mod` 14 /= 0 = False
   |a `mod` 13 /= 0 = False
   |a `mod` 12 /= 0 = False
   |a `mod` 11 /= 0 = False
   |a `mod` 10 /= 0 = False
   |a `mod` 9 /= 0 = False
   |a `mod` 8 /= 0 = False
   |a `mod` 7 /= 0 = False
   |a `mod` 6 /= 0 = False
   |a `mod` 5 /= 0 = False
   |a `mod` 4 /= 0 = False
   |a `mod` 3 /= 0 = False
   |a `mod` 2 /= 0 = False
   |a `mod` 1 /= 0 = False
   |otherwise = True


projectEuler5 :: Integer -> Integer
projectEuler5 a = proj_rec 3 (divisivel20xGuard  3)
   where
      proj_rec n True = n
      proj_rec n False = proj_rec (n+1) (divisivel20xGuard  (n+1))


projectEuler5_lista :: Integer
projectEuler5_lista a = head [x | x <- [1..], divisivel20x x]

main = do
   print $ projectEuler5_lista 1