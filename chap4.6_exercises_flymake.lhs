\section{Lists and List Operations}

%unanswered
\begin{Exercise} [number=43]
  How does it follow from this definition that lists of different length are unequal?
\end{Exercise}

%unanswered
\begin{Exercise} [number=44]
  Another ordering of lists is as follows: shorter lists come before
  longer ones, and for lists of the same length we compare their first
  elements, and if these are the same, the remainder lists. Give a
  formal definition of this ordering. How would you implement it in Haskell?
\end{Exercise}

\begin{Exercise} [number=45]
  Which operation on lists is specified by the Haskell definition in
  the frame below?
  \begin{spec}
    init :: [a] -> [a]
    init [x]     = []
    init (x:xs)  = x : init xs
  \end{spec}
\end{Exercise}

\begin{Answer}
  It's just like Clojure's/STk's \texttt{butlast} function.
\end{Answer}

\begin{Exercise} [number=46]
  Write your own definition of a Haskell operation @reverse@ that
  reverses a list.
\end{Exercise}

\begin{code}
reverse :: [a] -> [a]
reverse []  = []
reverse l   = squoosh l []
  where squoosh (x:xs)  ans = squoosh xs (x:ans)
        squoosh []      ans = ans
\end{code}

\begin{Exercise} [number=47]
  Write a function @splitList@ that gives all the ways to split a list
  of at least two elements in two non-empty parts. The type
  declaration is:
\begin{code}
splitList :: [a] -> [([a],[a])]
splitList xs = [splitAt i xs | i <- [1..n]]
  where n = (length xs) - 1
\end{code}
  \ExeText the call @splitList [1..4]@ should give @[([1], [2,3,4]),([1,2],[3,4]),([1,2,3],[4])]@.
\end{Exercise}

\begin{code}

\end{code}