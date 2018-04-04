ehTriangulo :: Double -> Double -> Double -> Bool
ehTriangulo a b c
   | (a + b) < c = False
   | (a + c) < b = False 
   | (c + b) < a = False  
   | otherwise = True


main = do
  print(ehTriangulo 1 5 8)