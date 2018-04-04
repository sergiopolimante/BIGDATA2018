ehPrimo:: Integer -> String
ehPrimo a
   | a `mod` 2 == 0  && a /= 2 = "nao eh primo"
   | a `mod` 3 == 0  && a /= 3 = "nao eh primo"
   | a `mod` 5 == 0  && a /= 5 = "nao eh primo"
   | a `mod` 7 == 0  && a /= 7 = "nao eh primo"
   | a `mod` 11 == 0  && a /= 11 = "nao eh primo"
   | a `mod` 13 == 0  && a /= 13 = "nao eh primo"
   | otherwise = "eh primo"


--otimizado pois para assim que encontra o primeiro da lista
ehPrimoLista :: Integer -> Bool
ehPrimoLista x = head [i | i <- [2..x], x `mod` i == 0] == x


main = do
  print (ehPrimoLista 41057)
  print (ehPrimoLista 41057341431412)


