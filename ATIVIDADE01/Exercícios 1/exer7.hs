func :: Double -> (Double, Double)
func a = (sqrt((1-cos a)/2),-sqrt((1-cos a)/2))

main = do
    print (func  10)