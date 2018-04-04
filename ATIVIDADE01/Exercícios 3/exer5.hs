prodvect:: [Double] -> [Double] -> Double

prodvect a b = a!!1 * b!!1 + a!!2 + b!!2



main = do 

   let vect1 = [0,1] :: Double
  
   let vect2 = [1,0] :: Double
  
  
   print prodvect vect1 vect2