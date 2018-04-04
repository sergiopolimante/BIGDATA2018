mult35 a = (a `mod` 3) == 0 && (a `mod` 5) == 0 

main = do
    print (mult35  15)