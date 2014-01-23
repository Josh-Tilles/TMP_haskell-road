
divides d n =
    rem n d == 0

ld n = ldf 2 n

ldf k n | divides k n = k
        | k^2 > n = n
        | otherwise = ldf (k+1) n

mnmInt :: [Int] -> Int
mnmInt [] = error "empty list"
mnmInt [x] = x
mnmInt (x:xs) = min x (mnmInt xs)

divides :: Integer -> Integer -> Bool

maxInt :: [Int] -> Int
maxInt [] = error "List must be non-empty."
maxInt [x] = x
maxInt (x:xs) = max x (maxInt xs)

removeFst :: Int -> [Int] -> [Int]
removeFst n [] = []
removeFst n (x:xs) | n == x = xs
                   | otherwise = (x : removeFst n xs)

srtInts :: [Int] -> [Int]
srtInts [] = []
srtInts xs = m : (srtInts (removeFst m xs))
  where m = mnmInt xs

srtInts' :: [Int] -> [Int]
srtInts' [] = []
srtInts' xs = let
                m = mnmInt xs
              in  m : (srtInts' (removeFst m xs))

count :: Char -> String -> Int
count _ [] = 0
count x (c:cs) | x == c = 1 + count x cs
               | otherwise = count x cs

blowup :: String -> String
-- blowup [] = []
-- blowup (c:cs) = let repeat :: Int -> Char -> String
--                     repeat n x | n == 0 = []
--                                | otherwise = x : repeat (n-1) x
--                     moreAndMore :: String -> Int -> String
--                     moreAndMore [] _ = ""
--                     moreAndMore (c:cs) n = repeat n c ++ moreAndMore cs (n+1)
--                 in c : moreAndMore cs 1
blowup "" = ""
blowup (c:cs) = let repeat x n | n == 0 = []
                               | otherwise = x : repeat x (n-1)
                    moreAndMore "" _ = ""
                    moreAndMore (c:cs) n = repeat c n ++ moreAndMore cs (n+1)
                in c : moreAndMore cs 2

blowup' :: String -> String
blowup' s = moreAndMore s 1
  where
    repeat x n | n == 0 = []
               | otherwise = x : repeat x (n-1)
    moreAndMore [] _ = []
    moreAndMore (c:cs) n = repeat c n ++ moreAndMore cs (n+1)

blowup'' :: String -> String
blowup'' s = concat (map (\(n,c) -> replicate n c) (zip [1..] s))

blowup''' :: String -> String
blowup''' s = concat $ map (\ (n,c) -> replicate n c) $ zip [1..] s

blowup'''' :: String -> String
blowup'''' s = concat $ zipWith replicate [1..] s

blowup''''' :: String -> String
blowup''''' = concat . zipWith replicate [1..]


-- WRONG! (why?)
-- srtString :: [String] -> [String]
-- srtString [] = []
-- srtString (w:ws) = m : (srtString ws)
--   where m = min w (minString ws)
--         minString = fold1 min


srtString :: [String] -> [String]
srtString [] = []
srtString [x] = [x]
srtString (w:ws) = m : (srtString (removeFst m (w:ws)))
  where m = min w (minString ws)
        minString [] = error "You done goofed."
        minString [x] = x
        minString (x:xs) = min x (minString xs)
        removeFst _ [] = []
        removeFst x (y:ys) | x == y = ys
                           | otherwise = y : (removeFst x ys)

prefix :: String -> String -> Bool
prefix [] _ys = True
prefix (x:xs) [] = False
prefix (x:xs) (y:ys) = (x==y) && prefix xs ys

substring :: String -> String -> Bool
substring xs [] = prefix xs [] -- i.e., if `xs == []`
substring xs ys = prefix xs ys || substring xs (tail ys)



