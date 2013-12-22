\section*{Making Symbolic Form Explicit} % (fold)
\label{sec:making_symbolic_form_explicit}

\begin{Exercise} [number=22]
  \begin{stmt} \label{stmt:DensityOfRationals}
    Between every two rational numbers there is a third one.
  \end{stmt}

  Can you think of an argument showing that \ref{stmt:DensityOfRationals} is true?
\end{Exercise}
\begin{Answer}
  a = i/j
  b = m/n
  a and b are rationals
  i,j,m and n are integers
  suppose c = (2i - 1) / j
  suppose d = b + c

  avg of a + b = ((i*n)(j*m))/(j*n)*2
  a + b / 2 is a rational?

  prove: $\forall{x,y} \in \rationals \colon \quad \exists{z} \in \rationals \suchthat x < z < y$
\end{Answer}

\begin{Exercise}
  Give structure trees of the following formulas:
  \Question $\forall{x} \Bigl( A(x) \implies \bigl(B(x) \implies C(x) \bigr)\Bigr)$
  
  \Question $\exists{x} \bigl( A(x) \land B(x) \bigr)$
   
  \Question $\exists{x} A(x) \land \exists{x} B(x)$
\end{Exercise}
\begin{ExerciseList}[start=1]
  \Exercise $\forall{x} \Bigl( A(x) \implies \bigl(B(x) \implies C(x) \bigr)\Bigr)$
  \Answer \Tree [.{$\forall{x} \Bigl( A(x) \implies \bigl(B(x) \implies C(x) \bigr)\Bigr)$}
                 [.{$A(x) \implies \bigl( B(x) \implies C(x) \bigr)$}
                  [.{$A(x)$} ]
                  [.{$B(x) \implies C(x)$} 
                   {$B(x)$} 
                   {$C(x)$} 
                  ]
                 ]
                ]

  \Exercise $\exists{x} \bigl( A(x) \land B(x) \bigr)$
  \Answer \Tree [.{$\exists{x} \suchThat \bigl( A(x) \land B(x) \bigr)$}
                 [.{$A(x) \land B(x)$}
                  {$A(x)$}
                  {$B(x)$} ] ]

  \Exercise $\exists{x} A(x) \land \exists{x} B(x)$
  \Answer \Tree [.{$\exists{x} A(x) \land \exists{x} B(x)$}
                 [.{$\exists{x} A(x)$} 
                  {$A(x)$} ]
                 [.{$\exists{x} B(x)$} 
                  {$B(x)$} ] ]
\end{ExerciseList}

\begin{ExerciseList}
  Write as formulas with restricted quantifiers:
  \Exercise $\exists{x} \suchThat \bigl( \exists{y} \suchThat x \in \rationals \land y \in \rationals \land x < y \bigr)$
  \Answer $\exists{x,y} \in \rationals \suchthat x < y$
  \Exercise $\forall{x} \bigl( x \in \rationals \implies \exists{y} \suchThat y \in \rationals \land x < y \bigr) $
  \Answer $\forall{x} \in \reals \left( \exists{y} \in \reals \suchthat x < y \right)$
  \Exercise $\forall{x} \bigl( x \in \integers \implies \exists{m,n} \left( m \in \naturals \land n \in \naturals \land x = m - n \right) \bigr)$
  \Answer $\forall{x} \in \integers %
              \left( %
                  \exists{m,n} \in \naturals \suchthat x = m - n %
              \right)$
\end{ExerciseList}

%unanswered
\begin{Exercise} [number=31]
  Translate into formulas, taking care to express the intended meaning:

  \Question The equation $x^2 + 1 = 0$ has a solution.

  \Question A largest natural number does not exist.

  \Question The number 13 is prime (use $d \mid n$ for `$d$ divides $n$').

  \Question The number $n$ is prime.

  \Question There are infinitely many primes.

\end{Exercise}

\begin{Answer} [number=31.1]
\begin{displaymath}
\exists{x} \suchThat x = \pm \sqrt{-1}
\end{displaymath}
\end{Answer}


\begin{Answer} [number=31.2]
\begin{displaymath}
\neg \exists{m \in \naturals} \suchthat \forall{n \in \naturals} \colon m \geq n
\end{displaymath}
\end{Answer}


%unanswered
\begin{ExerciseList}
  2.32 Translate into formulas [taking care to express the intended meaning]
  \Exercise Everyone loved Diana. (Use the expression $L(x,y)$ for: $x$ loved $y$, and the name $d$ for Diana)
  \Exercise Diana loved everyone.
  \Exercise Man is mortal. (Use $M(x)$ for `$x$ is a man', and $M\prime(x)$ for `$x$ is mortal'.)
  \Exercise Some birds do not fly. (Use $B(x)$ for `$x$ is a bird' and $F(x)$ for `$x$ can fly'.)
\end{ExerciseList}

%unanswered
\begin{ExerciseList}
  2.33 Translate into formulas, using appropriate expressions for the predicates:
  \Exercise Dogs that bark do not bite.
  \Exercise All that glitters is not gold.
  \Exercise Friends of Diana's friends are her friends.
  \Exercise The limit of $\frac{1}{n}$ as $n$ approaches infinity is zero.
\end{ExerciseList}

%unanswered
\begin{ExerciseList}
  2.34 \Exercise Everyone loved Diana except Charles.
  \Exercise Every man adores at least two women.
  \Exercise No man is married to more than one woman.
\end{ExerciseList}

%unanswered
\begin{ExerciseList}
  2.35
  \Exercise The King is not raging.
  \Exercise The King is loved by all his subjects. (use $K(x)$ for `$x$ is a King', and $S(x,y)$ for `$x$ is a subject of $y$').
\end{ExerciseList}

%unanswered
\begin{ExerciseList}
  2.36
  \Exercise $\exists{x} \in \rationals \suchThat x^2 = 5$
  \Exercise $\forall{n} \in \naturals \colon \exists{m} \in \naturals \suchThat n < m$
  \Exercise \[\forall{n} \in \naturals 
              \nexists{d} \in \naturals \suchThat 
                 1 < d < (2^n + 1) \land d \divides (2^n + 1)
            \]
  \Exercise $\forall{n} \in \naturals \exists{m} \in \naturals \suchThat \left( n < m \land \forall{p} \in \naturals \left(p \leq n \lor m \leq p \right)\right)$
  \Exercise $\forall{\varepsilon} \in \reals^{+} 
             \Bigl(
                \exists{n} \in \naturals \suchThat
                    \forall{m} \in \naturals
                    \bigl( 
                        m \geq n \implies 
                        \left(
                            \abs{a - a_m} \leq \varepsilon 
                        \right) 
                    \bigr) 
             \Bigr)$
            ($a$, $a_0$, $a_1$ refer to real numbers)
\end{ExerciseList}
  
% section making_symbolic_form_explicit (end)
