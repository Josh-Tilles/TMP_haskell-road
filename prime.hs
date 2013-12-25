
divides d n =
    rem n d == 0

ld n = ldf 2 n

ldf k n | divides k n = k
        | k^2 > n = n
        | otherwise = ldf (k+1) n

divides :: Integer -> Integer -> Bool

maxInt :: [Int] -> Int
maxInt [] = error "List must be non-empty."
maxInt [x] = x
maxInt (x:xs) = max x (maxInt xs)

removeFst :: Int -> [Int] -> [Int]
removeFst n [] = []
removeFst n (x:xs) | n == x = xs
                   | otherwise = (x : removeFst n xs)
