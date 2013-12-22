\section{A Data Type for Sets}
\usepackage{paralist}

%unanswered
\begin{Exercise} [number=54]
  Give implementations of the operations
  \begin{inparaenum}
    \item |unionSet|
    \item |intersectSet|
    \item |differenceSet|
  \end{inparaenum}
  in terms of |inSet|, |insertSet|, and |deleteSet|.
\end{Exercise}

%unanswered
\begin{Exercise} [number=55]
  In an implementation of sets as lists without duplicates, the
  implementation of |insertSet| has to be changed. How?
\end{Exercise}

%unanswered
\begin{Exercise} [number=56]
  What would have to change in the module \texttt{SetEq.hs} to get a
  representation of the empty set as $0$?
\end{Exercise}

%unanswered
\begin{Exercise} [number=57,difficulty=1]
  \Question How many pairs of curly braces $\lbrace \rbrace$ occur in
  the expanded notation for $\powerset^5(\emptyset)$, in the
  representation where $\emptyset$ appears as $\{\}$?

  \Question How many copies of $0$ occur in the expanded notation for
  $\powerset^5(\emptyset)$, in the representation where $\emptyset$
  appears as 0?
  % @TODO \ref{...} Exercise #56

  \Question
  How many pairs of curly braces occur in the expanded notation for
  $\powerset^5(\emptyset)$, in the representation where $\emptyset$
  appears as 0?
\end{Exercise}



%%% Local Variables: 
%%% mode: latex
%%% TeX-master: "exercises_base"
%%% End: 
