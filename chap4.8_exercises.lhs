\section{Using Lists to Represent Sets}

\begin{code}
delete :: Eq a => a -> [a] -> [a]
delete x []      = []
delete x (y:ys)
    | x == y     = ys
    | otherwise  = y : delete x ys
\end{code}

\begin{code}
elem :: Eq a => a -> [a] -> Bool
x `elem` []      = False
x `elem` (y:ys)
    | x == y     = True
    | otherwise  = elem x ys

union :: Eq a => [a] -> [a] -> [a]
[]      `union` ys = ys
(x:xs)  `union` ys = x : xs `union` (delete x ys)

intersect :: Eq a => [a] -> [a] -> [a]
intersect [] s    = []
intersect (x:xs) s
    | x `elem` s  = x :  xs `intersect` s
    | otherwise   =      xs `intersect` s
\end{code}

\begin{Exercise} [number=51]
  The Haskell operation for list difference is defined as |\\| in
  \texttt{List.hs}. Write your own version of this.
\end{Exercise}

\begin{Answer}
\begin{code}
(\\) :: [a] -> [a] -> [a]
xs \\ ys = filter (`notElem` ys) xs
\end{code}
\end{Answer}

\begin{spec}
elem, notElem :: Eq a => a -> [a] -> Bool
elem = any . (==)
notElem = all . (/=)
\end{spec}

\begin{code}
addElem :: a -> [[a]] -> [[a]]
addElem x = map (x:)

powerList :: [a] -> [[a]]
powerList []      = [[]]
powerList (x:xs)  = subsetsWithoutX ++ subsetsWithX
  where subsetsWithoutX  = powerList xs
        subsetsWithX     = addElem x subsetsWithoutX
\end{code}

\begin{code}
data S = Void deriving (Eq,Show)

empty :: [S]
empty = []
\end{code}

%unanswered
\begin{Exercise} [number=53]
  Write functions |genUnion| and |genIntersect| for generalized list
  union and list intersection. The functions should be of type
  |[[a]] -> [a]|. They take a list of lists as input and produce a
  list as output.

  Note that |genIntersect| is undefined on the empty
  list of lists (compare the remark about the presuposition of
  generalized intersection on page ONE HUNDRED THIRTY-FOUR).
\end{Exercise}

\begin{Answer}
\begin{code}
genUnion, genIntersect :: [[a]] -> [a]
\end{code}
\end{Answer}