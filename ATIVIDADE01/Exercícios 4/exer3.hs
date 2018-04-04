diagPrincipal :: [[Int]] -> Int
diagPrincipal xs = sum $ zipWith (!!) xs [(length xs)-1, (length xs)-2 .. 0]

main = do
   let matr = [[4,0,4,5,3],[0,1,4,0,0],[0,9,3,0,0],[0,2,5,3,0],[10,20,02,03,41]]
   print $ diagPrincipal matr