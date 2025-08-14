divide :: Int -> [a] -> ([a], [a])
divide n l = divideAux n l []

divideAux :: Int -> [a] -> [a] -> ([a], [a])
divideAux n (x : xs) p1 =
    if n > 0 then divideAux (n - 1) xs (p1 ++ [x])
    else (p1, x:xs)
