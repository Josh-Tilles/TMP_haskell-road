\section{Basic Notions}

\begin{code}
list2func :: Eq a => [(a,b)] -> a -> b
list2func [] _ = error "function not total"
list2func ((u,v):uvs) x  | x == u     = v
                         | otherwise  = list2func uvs x

func2list :: (a -> b) -> [a] -> [(a,b)]
func2list f xs = [(x, f x) | x <- xs]
\end{code}

The range of a function, implemented as a list of pairs, is given by:
\begin{code}
ranPairs :: Eq b => [(a,b)] -> [b]
ranPairs f = rub [y | (_,y) <- f]
\end{code}

If a function is defined on an enumerable domain, we can list its
(finite or infinite) range starting from a given element.
\begin{code}
listValues :: Enum a => (a -> b) -> a -> [b]
listValues f i = (f i) : listValues f (succ i)
\end{code}

If we also know that the domain is bounded, we can generate the whole
range as a finite list.
\begin{code}
listRange :: (Bounded a, Enum a) => (a -> b) -> [b]
listRange f = [ f i | i <- [minBound..maxBound] ]
\end{code}

%unanswered
\begin{Exercise} [number=10]
  Give a closed form implementation of the following function:
  \begin{spec}
    h 0 = 0
    h n = h (n-1) + (2*n)
  \end{spec}
\end{Exercise}

%unanswered
\begin{Exercise} [number=11]
  Give a closed form implementation of the following function:
  \begin{spec}
    k 0 = 0
    k n = k (n-1) + (2*n-1)
  \end{spec}
\end{Exercise}

\begin{code}
restrict :: Eq a => (a -> b) -> [a] -> a -> b
restrict f xs x | x `elem` xs = f x
                | otherwise = error "argument not in domain"

restrictPairs :: Eq a => [(a,b)] -> [a] -> [(a,b)]
restrictPairs xys xs = [ (x,y) | (x,y) <- xys, x `elem` xs]

image :: Eq b => (a -> b) -> [a] -> [b]
image f xs = nub [ f x | x <- xs ]

coImage :: Eq b => (a -> b) -> [a] -> [b] -> [a]
coImage f xs ys = [x | x <- xs, (f x) `elem` ys]

imagePairs :: (Eq a, Eq b) => [(a,b)] -> [a] -> [b]
imagePairs f xs = image (list2func f) xs

coImagePairs :: (Eq a, Eq b) => [(a,b)] -> [a] -> [b] -> [a]
coImagePairs f xs ys = coImage (list2func f) xs ys
\end{code}


%%% Local Variables:
%%% mode: latex
%%% TeX-master: "exercises_base"
%%% End:
