\section{Quantifiers as Procedures}
\label{sec:Quantifiers_as_procedures}

\begin{code}
every, some :: [a] -> (a -> Bool) -> Bool
every  xs p = all p xs
some   xs p = any p xs
\end{code}

\begin{Exercise} [number=51]
  Define a function
\begin{code}
unique :: (a -> Bool) -> [a] -> Bool
\end{code}
  that gives @True@ for @unique p xs@ just in case there is exactly
  one object among @xs@ that satisfies @p@.
\end{Exercise}

\begin{Answer}
\begin{code}
unique p xs = length (filter p xs) == 1

none :: [a] -> (a -> Bool) -> Bool
none xs p = not (some xs p)

unique' :: (a -> Bool) -> [a] -> Bool
unique' p []     = false
unique' p (x:xs)
    | p x        = none xs p
    | otherwise  = unique' p xs
\end{code}
\end{Answer}

\begin{Exercise}
Define a function
\begin{code}
parity :: [Bool] -> Bool
\end{code}
that gives @True@ for @parity xs@ just in case an even number of the @xs@s equals @True@.
\end{Exercise}

\begin{Answer}
\begin{code}
parity = reduce (/=) True
  where reduce = foldl
\end{code}
An empty list has 0 @True@s. Since 0 is an even number, the ``initial'' answer
(or ``base case''?) should be @True@.

I use @reduce@ because I'm not sure whether @foldl@ or @foldr@ is more
appropriate here.
\end{Answer}

\begin{Exercise}
Define a function
\begin{code}
evenNR :: (a -> Bool) -> [a] -> Bool
\end{code}
that gives @True@ for @evenNR p xs@ just in case an even number of the @xs@s have property @p@. (Use the @parity@ function from the previous exercise.)
\end{Exercise}

\begin{Answer}
\begin{code}
evenNR p = parity . map p
\end{code}
\end{Answer}