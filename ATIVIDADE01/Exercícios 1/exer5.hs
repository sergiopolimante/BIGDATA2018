func :: Integer -> Bool
func a = a < -1 || (a > 1 && (a `mod` 2) == 0)

main = do
    print (func (11))