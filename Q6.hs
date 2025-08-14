count :: String -> [String] -> Int

count candidate [] = 0

count candidate (x : xs) =
    if x == candidate then 1 + count candidate xs
    else count candidate xs
----------------------------------------------------------------
----------------------------------------------------------------
sort [] = []
sort [x] = [x]
sort xs = merge (sort ys) (sort zs)
            where (ys,zs) = half xs
half xs = (take n xs, drop n xs)
            where n = length xs `div` 2
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
    | x <= y = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys
----------------------------------------------------------------
----------------------------------------------------------------
result :: [String] -> [(String, Int)]
result [] = []
result votes = drop 1 (resultAux (sort votes) 0 "Nothing0197" []) 

resultAux :: [String] -> Int -> String -> [(String, Int)] -> [(String, Int)]
resultAux [] currN currC res = res ++ [(currC, currN)]
resultAux (x : xs) currN currC res = 
    if x == currC then resultAux xs (currN + 1) currC res
    else resultAux xs 1 x (res ++ [(currC, currN)])

winnerAux :: [String] -> Int -> String -> Int -> String -> String
winnerAux [] currN currC maxN maxC = if maxN < currN then currC
    else maxC

winnerAux (x : xs) currN currC maxN maxC 
    | x == currC = winnerAux xs (currN + 1) currC maxN maxC
    | currN > maxN = winnerAux xs 1 x currN currC
    | otherwise = winnerAux xs 1 x maxN maxC 

winner :: [String] -> String
winner votes = winnerAux votes 0 "Nothing0197" 0 "NNNN0197"

