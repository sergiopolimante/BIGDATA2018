concatena :: String -> String -> String
concatena a b = a ++ " " ++ b


main = do
   let str1 = "string1"
   let str2 = "string2"
   

   print (concatena str1 str2)