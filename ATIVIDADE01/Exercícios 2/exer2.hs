ehTriangulo :: Double -> Double -> Double -> String
ehTriangulo a b c
   | (a == b && a == c) = "equilatero"
   | (a == b || a == c || c == b) = "isosceles" 
   | otherwise = "escaleno"


main = do
  print(ehTriangulo 1 2 2)