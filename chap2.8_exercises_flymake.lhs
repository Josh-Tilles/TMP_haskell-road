\section{Quantifiers as Procedures} % (fold)
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
  that gives @True@ for @unique p xs@ just in case there is exactly one object among @xs@ that satisfies @p@.
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

%unanswered
\begin{Exercise}
Define a function
\begin{code}
parity :: [Bool] -> Bool
\end{code}
that gives @True@ for @parity xs@ just in case an even number of the @xs@s equals @True@.
\end{Exercise}

%unanswered
\begin{Exercise}
Define a function
\begin{code}
evenNR :: (a -> Bool) -> [a] -> Bool
\end{code}
that gives @True@ for @evenNR p xs@ just in case an even number of the @xs@s have property @p@. (Use the @parity@ function from the previous exercise.)
\end{Exercise}
% section Quantifiers_as_procedures (end)