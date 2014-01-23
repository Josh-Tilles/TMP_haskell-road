igWe use LD(n) for the least natural number greater than 1 that divides n.

\begin{code}
    divides d n =
        rem n d == 0
\end{code}

It is useful to define LD in terms of a second function that
calculates the least divisor starting from a given threshold k, with
$k <= n$.

\begin{code}

    ld n = ldf 2 n

    ldf k n  | k `divides` n  = k
             | k^2 > n        = n
             | otherwise      = ldf (k+1) n
\end{code}

\begin{Exercise} [number=4]
  If |ldf| used $k^2 \geq n$ how would that change the function?
\end{Exercise}

\begin{Answer}
  It wouldn't, because otherwise |divides k n| would have been |True|.
\end{Answer}

\begin{code}
    prime0 n
        | n > 1      = error "not a positive integer"
        | n == 1     = False
        | otherwise  = ld n == n
\end{code}

\begin{Exercise} [number=6]
  Can you gather from the definition of |divides| what the type
  declaration for |rem| would look like?
\end{Exercise}

\begin{Answer}
\begin{spec}
rem :: Integer -> Integer -> Integer
\end{spec}
\end{Answer}

\begin{Exercise} [number=9]
  Define a function that given the maximum of a list of integers. Use
  the predefined function |max|.
\end{Exercise}

\begin{Answer}
\begin{code}
maxIn :: [Int] -> Int
maxIn []      = error "UNDEFINED: empty list"
maxIn [x]     = x
maxIn (x:xs)  = max x (maxIn xs)
\end{code}
\end{Answer}

\begin{Exercise} [number=10]
  Define a function @removeFst@ that removes the first occurrence of an integer $m$ from a list of integers. if |m| does not occur n the list, the list remains unchanged.
\end{Exercise}

\begin{Answer}
\begin{code}
removeFst :: Int -> [Int] -> [Int]
removeFst  _  []                   = []
removeFst  m  (x:xs)  | m == x     = xs
                      | otherwise  = x : removeFst m xs
\end{code}
\end{Answer}

\begin{Exercise} [number=13]
  Write a function |count| for counting the number of occurrences of a
  character in a string.
\end{Exercise}

\begin{Answer}
\begin{code}
count :: Char -> String -> Int
count _  [] = 0
count c  (y:ys)  | c == y     = 1 + count c ys
                 | otherwise  = count c ys
\end{code}
\end{Answer}

\begin{Exercise} [number=14]
  Write a function @blowup@ such that |blowup ``bang!''| should yield
  |"baannngggg!!!!!"|
\end{Exercise}

\begin{Answer}

\begin{code}
blowup :: String -> String
blowup = concat . zipWith replicate [1..]
\end{code}

The above solution is in point-free form because I'm under the
impression that point-free form is what Haskellers aim for by
default. Like, to write in point-free form often is an achievement.
Check out the slight difference (the readability in particular) in the following definition:
\begin{spec}
blowup chrs = concat (zipWith replicate [1..] chrs)
\end{spec}

Also, consider a previous iteration of the solution:
%\begin{spec}
%blowup = concat . map (\(n,c) -> replicate n c) . zip [1..]
%\end{spec}
% commented out because otherwise it breaks highlighting.

\end{Answer}


\begin{Exercise} [number=15]
Write a function
\begin{code}
srtString :: [String] -> [String]
\end{code}
that sorts a list of strings in alphabetical order.
\end{Exercise}

\begin{Answer}
\begin{code}
srtString [] = []
srtString xs = srtString (remove)
\end{code}

I know I probably could have reversed the definition order to be a little more terse, like this:
\begin{spec}

\end{spec}
\end{Answer}




\problem{1.17} Write a function |substring :: String -> String -> Bool| that checks whether |str1| is a substring of |str2|.

The @prefix@ function was given in Example 1.16:
\begin{code}
    prefix :: String -> String -> Bool
    prefix []      _       = True
    prefix _       []      = False
    prefix (x:xs)  (y:ys)  = (x == y) && prefix xs ys
\end{code}

The actual definition for @substring@ is here:
\begin{code}
    substring :: String -> String -> Bool
    substring str1 str2@(_:restOfStr2)
        | prefix str1 str2  = True
        | otherwise         = prefix str1 restOfStr2
\end{code}


\problem{1.20} Use |map| to write a function |lengths| that takes a list of lists and returns a list of the corresponding lengths.
\begin{code}
    lengths :: [[a]] -> [Int]
    lengths = map length
\end{code}

\problem{1.21} Use |map| to write a function |sumLengths| that takes a list of lists and returns the sum of their lengths.
\begin{code}
    sumLengths :: [[a]] -> Int
    sumLengths   = sum . map length
    sumLengths'  = sum . lengths
\end{code}

\begin{spec}
    factors :: Integer -> [Integer]
    factors n  | n < 1      = error "argument not positive"
               | n == 1     = []
               | otherwise  = p : factors (n `div` p)
                   where p = ld n

    primes0 :: [Integer]
    primes0 = filter prime0 [2..]

    ldp :: Integer -> Integer
    ldp n = ldpf primes1 n

    ldpf :: [Integer] -> Integer -> Integer
    ldpf (p:ps) n  | rem n p == 0  = p
                   | p^2 > n       = n
                   | otherwise     = ldpf ps n

    primes1 :: [Integer]
    primes1 = 2 : filter prime [3..]

    prime :: Integer -> Bool
    prime n  | n < 1      = error "not a positive integer"
             | n == 1     = False
             | otherwise  = ldp n == n
\end{spec}

\problem{1.24} What happens when you modify the defining equation of @ldp@ to @ldp = ldpf primes1@?
Nothing. It's just in point-free form.
