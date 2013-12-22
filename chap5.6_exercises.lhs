\section{Equivalence Classes and Partitions}

%unanswered
\begin{Exercise} [number=82]
  Use the implementation of relations |Rel' a| as characteristic
  functions over type |a| to implement a function |raccess| that takes
  a relation $r$, an object $x$, and a list $L$, and returns the list
  of all objects $y$ from $L$ such that $rxy$ holds. The type
  declaration should run:
  \begin{code}
  raccess :: Rel' a -> a -> [a] -> [a]
  \end{code}
\end{Exercise}

%unanswered
\begin{Exercise} [number=85]
  Show the following: if $\Set{A_i}{i \in I}$ is a partition of $A$
  and $\Set{B_j}{j \in J}$ is a partition of $B$, then $\Set{A_i
    \times B_j}{(i,j) \in I \times J}$ is a partition of $A \times B$.
\end{Exercise}

%unanswered
\begin{Exercise} [number=92]
  Give the partition that the relation of example 5.59 induces on
  $\naturals$.
\end{Exercise}

%unanswered
\begin{Exercise} [number=96]
  Is the following relation an equivalence on $\{0, 1, 2, 3, 4\}$? If
  so, give the corresponding partition.
  \begin{displaymath}
    \lbrace
    (0;0),
    (0;3),
    (0;4),
    (1;1),
    (1;2),
    (2;1),
    (2;2),
    (3;0),
    (3;3),
    (3;4),
    (4;0),
    (4;3),
    (4;4)
    \rbrace
  \end{displaymath}
\end{Exercise}

\begin{Exercise} [number=98]
  What are the equivalences corresponding to the following
  partitions?:
  \Question $\bigl\lbrace \{0,3\}, \{1, 2, 4\} \bigr\rbrace$ of $\{0,
  1, 2, 3, 4\}$,
  \Question $\bigl\lbrace \Set{n \in \integers}{n < 0}$, $\{0\}$,
  $\Set{n \in \integers}{n > 0} \bigr\rbrace$ of $\integers$,
  \Question $\bigl\lbrace \{\text{even numbers}\}, \{\text{odd
    numbers}\} \bigr\rbrace$, of $\naturals$.
\end{Exercise}

% NEXT: 99

%%% Local Variables: 
%%% mode: latex
%%% TeX-master: "exercises_base"
%%% End: 
