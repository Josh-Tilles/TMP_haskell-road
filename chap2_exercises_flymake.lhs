%\xor

\section*{Chapter 2: Talking about Mathematical Objects}
\label{sec:chapter_2_talking_about_mathematical_objects}

\problem{2.2} Make up the truth table for the exclusive version of \emph{or}.

\begin{tabular}{ccc} 
    \hline
    $P$ &$Q$ &$P \xor Q$ \\
    \hline
    1 &1 &0 \\
    1 &0 &1 \\
    0 &1 &1 \\
    0 &0 &0 \\
    \hline
\end{tabular}



\problem{2.4} A truth table for $\neg(P \iff Q)$

\begin{tabular}{ l || l || l || c || c || r }
    \hline
    $P$ &$Q$ &$P \implies Q$ &$P \seilpmi Q$ &$P \iff Q$ &$\lnot\left(P \iff Q\right)$ \\
    \hline
    1   &1   &1              &1              &1          &0 \\
    1   &0   &0              &1              &0          &1 \\
    0   &1   &1              &0              &0          &1 \\
    0   &0   &1              &1              &1          &0 \\
    \hline
\end{tabular}

(N.B. that $\left(P \iff Q \right) \equiv P \implies Q \land Q \implies P$)

To demonstrate that the given haskell implementation of |<+>| is correct, I'll show the result of every combination of inputs.
\begin{code}
    infixr 2 <+>
    (<+>) :: Bool -> Bool -> Bool
    x <+> y  =  x /= y

    do  x <- [True, False]
        y <- [True, False]
        return $
            "With X as " ++ show x ++ " and Y as " ++ show y ++ ": " ++ show (x <+> y)
\end{code}
Note that the results for |<+>| match that of the table perfectly.

\problem{2.9} Let $\xor$ stand for \emph{exclusive or}. Show, using the REF TRUTH TABLE 2.2, that $\left( P \xor Q \right) \xor Q$ is equivalent to $P$.

\begin{tabular}{c c c || c || c} % doubled bars because of lhs2TeX
    \hline
    $P$ &$Q$ &$P \xor Q$ &$(P \xor Q) \xor Q$ &$(P \xor Q) \xor Q \iff P$ \\
    \hline
    1 &1 &0 &1 &1 \\
    1 &0 &1 &1 &1 \\
    0 &1 &1 &0 &1 \\
    0 &0 &0 &0 &1 \\
    \hline
\end{tabular}
