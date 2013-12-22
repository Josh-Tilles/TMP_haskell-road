\section{Paradoxes, Types and Type Classes}

\begin{spec}
funny x  | halts x x  = undefined
         | otherwise  = True
\end{spec}
So, does @funny funny@ diverge or halt? IT'S A PARADOX!!

\begin{spec}
halts f x = f /= g
  where g y  | y == x     = undefined
             | otherwise  = f y
\end{spec}

\begin{code}
collatz :: Integer -> [Integer]
collatz n  | n < 1   = error "argument not positive"
           | n == 1  = [1]
           | even n  = n : collatz (n `div` 2)
           | odd n   = n : collatz (3*n + 1)
\end{code}

\begin{Exercise} [number=8]
  Explain the following error message:
  
  \begin{verbatim}
    Prelude> elem 1 1
    ERROR: [a] is not an instance of class "Num"
    Prelude>
  \end{verbatim}
\end{Exercise}

\begin{Answer}
  An intuitive explanation is that you cannot test anything for 
  being a ``member'' of a number.

  The function |elem| has type |Eq a => a -> [a] -> Bool|.
  However, @(elem 1) :: Num a => [a] -> Bool@. This is because
  when @elem@ is partially applied to 1, Haskell determines that
  @elem@ will be operating on some \term{instance} of the @Num@
  typeclass\footnote{however, since 1 can be an @Int@ \emph{or} an @Integer@, it must stick with the more general @Num@}. 
  As such, the type changes. The function produced by applying
  @elem@ to @1@ can only be sensibly applied to a list of @Num@s.
  What the function received was \emph{not} a list of some type |a| such
  that |a| was an instance of @Num@, but rather another @1@. I think that
  the error is, in effect, saying that ``my expected parameter is not compatible
  with what you've supplied me''.
  
\end{Answer}