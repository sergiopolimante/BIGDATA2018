div2d :: Integer -> Float 
div2d a = b / 2
    where b = fromInteger a

main = do
    let x = 5 :: Integer
    print (div2d  x)