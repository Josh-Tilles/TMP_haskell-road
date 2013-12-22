\section{Rules for the Connectives}

\begin{Exercise} [number=2]
  Apply both implication rules to prove $P \implies R$ from the givens $P \implies Q$, $P \implies (Q \implies R)$.
\end{Exercise}
\begin{Answer}
  \begin{structured_derivation}
    \task{Prove that $P \implies R$ when:}
    \assumption[FACT:P->Q]{$P \implies Q$}
    \assumption[FACT:P->Q->R]{$P \implies (Q \implies R)$}
    \isProvedBy{let us assume that $P$ is true. If we can then also show that $R$ is true, then the implication holds.}
    \begin{nested_derivation}
      \task{Prove that $Q \implies R$ is true when:}
      \assumption[FACT:P]{$P$ is true}
      \observation [FACT:Q->R]
        {\term{modus ponens} with \ref{FACT:P->Q->R} and \ref{FACT:P} }
        {$Q \implies R$}
      \observation[FACT:Q]
        {\term{modus ponens} with \ref{FACT:P->Q} and \ref{FACT:P} }
        {$Q$}
      \observation[FACT:R]
        {\term{modus ponens} with \ref{FACT:Q} and \ref{FACT:Q->R} }
        {$R$}
    \end{nested_derivation}
  \end{structured_derivation}
\end{Answer}

\begin{Exercise} [number=4]
  \noindent
  Assume that $n,m \in \naturals$. \\
  Show: ($m$ is odd $\land$ $n$ is odd) $\implies$ $m + n$ is even.
\end{Exercise}
\begin{Answer}  
  \begin{structured_derivation}
    \task{Prove that ($m$ is odd $\land$ $n$ is odd) $\implies m + n$ is even when:}
    \task{Prove that $m + n$ is necessarily even if $m$ and $n$ are both odd.}
    \assumption*{$n \in \naturals$}
    \assumption*{$m \in \naturals$}
    \isProvedBy{If the antecedent isn't true, then the implication is \term{vacuously true}. So in order to prove the implication let's assume the antecedent is true and then demonstrate that the consequent is true.}
    \begin{nested_derivation}
      \task{Prove that $m + n$ is even when:}
      \assumption{$m$ is odd}
      \assumption{$n$ is odd}
      \observation
        {definition of odd-ness}
        {$\exists{x} \in \integers \suchthat m = 2x + 1$}
      \observation
        {definition of odd-ness}
        {$\exists{y} \in \integers \suchthat n = 2y + 1$}
      \isProvedBy{formalizing the definition of ``even'' to make it amenable to proof}
      \begin{nested_derivation}
        \task{Prove that $\exists{i} \in \integers \suchthat m + n = 2i $}
        $m + n$\\
        $(2x + 1) + (2y + 1)$\\
        $2x + 2y + 2$\\
        $2(x + y + 1)$\\
        % (x + y + 1) is a witness for i?
        \begin{nested_derivation}
          \task{Prove that $x + y + 1$ is an integer, and is therefore a witness of i (??)}
        \end{nested_derivation}
      \end{nested_derivation}
    \end{nested_derivation}
  \end{structured_derivation}
\end{Answer}

\begin{Exercise} [number=5]
  Show:
  \Question{From $P \iff Q$ it follows that $(P \implies R) \iff (Q \implies R)$,}
  \Question{From $P \iff Q$ it follows that $(R \implies P) \iff (R \implies Q)$.}
\end{Exercise}

\begin{Answer} [number=5.1]
  \begin{structured_derivation}
    \task{Prove that $(P \implies R) \iff (Q \implies R)$ when:}
    \assumption*{$P \iff Q$}
    \isProvedBy{show that each implies the other}
    \begin{nested_derivation}
      \task{Prove $Q \implies R$ when:}
      \assumption*{$P \implies R$}
      \isProvedBy{deduction rule}
      \begin{nested_derivation}
        \task{Prove $R$ when:}
        \assumption*{$Q$}
        \observation*
          {\term{modus ponens}}
          {$P$}
        \observation*
          {\term{modus ponens}}
          {$R$}
        \qed
      \end{nested_derivation}
    \end{nested_derivation}
    
    \begin{nested_derivation}
      \task{Prove $P \implies R$ when:}
      \assumption*{$Q \implies R$}
      \isProvedBy{deduction rule}
      \begin{nested_derivation}
        \task{Prove $R$ when:}
        \assumption*{$P$}
        \observation*
          {\term{modus ponens}}
          {$Q$}
        \observation*
          {\term{modus ponens}}
          {$R$}
        \qed
      \end{nested_derivation}
    \end{nested_derivation}
  \end{structured_derivation}
\end{Answer}

\begin{Answer} [number=5.2]
  \begin{structured_derivation}
    \task{Prove $(R \implies P) \iff (R \implies Q)$ when:}
    \assumption[PiffQ]{$P \iff Q$}
    \isProvedBy{show that each implies the other to demonstrate equivalence}
    \begin{nested_derivation}
      \task{Prove that $R \implies P$ when:}
      \assumption*{$R \implies Q$}
      \isProvedBy{deduction rule}
      \begin{nested_derivation}
        \task{Prove that $P$ when:}
        \assumption*{$R$}
        \observation*
          {\term{modus ponens}}
          {$Q$}
        \observation*
          {\term{modus ponens} / Elimination Rule}
          {$P$}
      \end{nested_derivation}
    \end{nested_derivation}
    \begin{nested_derivation}
      \task{Prove that $R \implies Q$ when:}
      \assumption*{$R \implies P$}
      \isProvedBy{deduction rule}
      \begin{nested_derivation}
        \task{Prove $Q$ when:}
        \assumption*{$R$}
        \observation*
          {\term{modus ponens}}
          {$P$}
        \observation*
          {\term{modus ponens}}
          {$Q$}
      \end{nested_derivation}
    \end{nested_derivation}
  \end{structured_derivation}
\end{Answer}

\begin{Exercise} [number=7]
  Produce proofs for:
  \Question Given: $P \implies Q$. To show: $\neg{Q} \implies \neg{P}$,
  \Question Given: $P \iff Q$. To show: $\neg{P} \iff \neg{Q}$.
\end{Exercise}

\begin{Answer} [number=7.1]
  \begin{structured_derivation}
    \task{Prove that $\neg{Q} \implies \neg{P}$ when:}
    \assumption{$P \implies Q$}
    \isProvedBy{deduction rule}
    \begin{nested_derivation}
      \task{Prove $\neg{P}$ when:}
      \assumption{$\neg{Q}$}
      \isProvedBy{assume the opposite and then derive $\bot$}
      \begin{nested_derivation}
        \task{Prove ?? \#\# Q when:}
        \assumption{$P$}
        \observation
          {\term{modus ponens}}
          {$Q$}
        \observation
          {$Q$ and $\neg{Q}$}
          {$\bot$}
      \end{nested_derivation}
      \andbutso{$\neg{P}$}      
    \end{nested_derivation}
  \end{structured_derivation}
\end{Answer}

\begin{Answer} [number=7.2]
  \begin{structured_derivation}
    \task{Prove that $\neg{P} \iff \neg{Q}$ when:}
    \assumption{$P \iff Q$}
    \isProvedBy{division into cases. Show that the antecedent/consequent relationship runs both ways to prove equivalence}
    \begin{nested_derivation}
      \task{Prove that $\neg{P} \implies \neg{Q}$}
      \isProvedBy{deduction rule}
      \begin{nested_derivation}
        \task{Prove $\neg{Q}$ provided that:}
        \assumption*{$\neg{P}$}
        \isProvedBy{assume the opposite and then derive $\bot$}
        \begin{nested_derivation}
          \task{Prove $P$ when:}
          \assumption*{$Q$}
          \observation*
            {\term{modus ponens} with root assumption}
            {$P$}
          contradiction!
        \end{nested_derivation}
        \andbutso{$\neg{Q}$}
      \end{nested_derivation}
    \end{nested_derivation}
    
    \begin{nested_derivation}
      \task{Prove that $\neg{Q} \implies \neg{P}$}
      \isProvedBy{deduction rule}
      \begin{nested_derivation}
        \task{Prove $\neg{P}$ when:}
        \assumption*{$\neg{Q}$}
        \isProvedBy{assume the opposite and then derive something false}
        \begin{nested_derivation}
          \task{Prove $Q$ supposing:}
          \assumption*{$P$}
          \observation*
            {\term{modus ponens} with root assumption}
            {$Q$}
        \end{nested_derivation}
        \andbutso{$\neg{P}$}
      \end{nested_derivation}
    \end{nested_derivation}
  \end{structured_derivation}
\end{Answer}



\begin{Exercise} [number=9, difficulty=1]
  Show that from $(P \implies Q) \implies P$ it follows that $P$.
  
  \ExeText Hint: Apply Proof by Contradiction. (The implication rules do not suffice for this admittedly exotic example.)
\end{Exercise}

\begin{Answer}
  \begin{structured_derivation}
    \task{Prove $P$ when:}
    \assumption*{$(P \implies Q) \implies P$}
    \isProvedBy{contradiction}
    \begin{nested_derivation}
      \task{Prove $\bot$ when:}
      \assumption*{$\neg{P}$}
      \observation
        {the antecedent is false so the implication is vacuously true}
        {$P \implies Q$}
      \observation
        {\term{modus ponens}}
        {$P$}
      \observation
        {law of the excluded middle; $P \land \neg{P}$}
        {$\bot$}      
    \end{nested_derivation}
  \end{structured_derivation}
\end{Answer}

\begin{theorem}
  From $P \lor Q$, $\neg{P}$ it follows that $Q$.
\end{theorem}

\begin{Exercise} [number=11]
  Assume that $A$, $B$, $C$, and $D$ are statements.
  \Question From the given $A \implies (B \lor C)$ and $B \implies \neg{A}$, derive that $A \implies C$.
  \Question From the given $(A \lor B) \implies (C \lor D)$, $C \implies A$, and $B \implies \neg{A}$, derive that $B \implies D$.
\end{Exercise}

\begin{Answer} [number=11.1]
  \begin{structured_derivation}
    \task{Derive $A \implies C$ when:}
    \assumption*{$B \implies \neg{A}$}
    \assumption*{$A \implies (B \lor C)$}
    \isProvedBy{deduction rule}
    \begin{nested_derivation}
      \task{Prove $C$ when:}
      \assumption*{$A$}
      \observation*
        {\term{modus ponens}}
        {$B \lor C$}
      \introbserv*{show that $B$ cannot be true}
      \begin{nested_derivation}
        \task{Derive $\bot$ when:}
        \assumption*{$B$}
        \observation*{\term{modus ponens}}
          {$\neg{A}$}
        \observation*{law of the excluded middle; $A \land \neg{A}$}
          {$\bot$}
      \end{nested_derivation}
      \andbutso{$\neg{B}$}
      \observation*
        {? by example 3.10}
        {$C$}
    \end{nested_derivation}
  \end{structured_derivation}
\end{Answer}

\begin{Answer} [number=11.2]
  \begin{structured_derivation}
    \task{Derive that $B \implies D$ when:}
    \assumption{$A \lor B \implies C \lor D$}
    \assumption{$C \implies A$}
    \assumption{$B \implies \neg{A}$}
    \isProvedBy{deduction rule}
    \begin{nested_derivation}
      \task{Prove $D$, assuming:}
      \assumption*{$B$}
      \observation
        {A disjunction follows from each of its disjuncts.}
        {$A \lor B$}
      \observation
        {\term{modus ponens}}
        {$C \lor D$}
      \observation
        {\term{modus ponens}}
        {$\neg{A}$}
      \observation
        {\term{modus tollens}}
        {$\neg{C}$}
      \observation
        {? by 3.10}
        {$D$}
    \end{nested_derivation}
  \end{structured_derivation}
\end{Answer}

\begin{Exercise} [number=15]
  Show that for any $n \in \naturals$, division of $n^2$ by 4 gives a remainder 0 or 1.
\end{Exercise}

\begin{Answer}
  
  % I don't want the supertext of a number to also be a number.
  \renewcommand{\thefootnote}{\fnsymbol{footnote}}
  
  % TODO also kinda like problem # 4, where I'm not sure how to formally discuss divisibility concisely.
  
  \begin{structured_derivation}
    \task{Prove that $\frac{n^2}{4}$ gives 0 or 1 as a remainder when:}
    \assumption*{$n \in \naturals$}
    \observation*
      {simple experimentation}
      {$9 \equiv 1 \imod{4}$}
    \observation*
      {simple experimentation}
      {$16 \equiv 0 \imod{4}$}
    \observation*
      {simple experimentation}
      {$25 \equiv 1 \imod{4}$}
    \isProvedBy{division into cases; every natural number is either even or odd}
    \begin{nested_derivation}
      \task{Prove that $\frac{n^2}{4}$ gives 0\footnotemark\ as a remainder when:}
      \assumption*{$n$ is even}
      \footnotetext{yes, yes, it's more proper to define the task as aiming for 0 \emph{or} 1, but this makes the \emph{intent} of the goal more clear. Besides, proving one of the conjuncts makes the entire expression true. \emph{boo-yah!}}
      \observation*
        {definition of what it means for a number to be even}
        {$\exists{k} \in \integers \suchthat n = 2k$}
      \introbserv*{figure out $n^2$ in terms of $k$}
      \begin{nested_derivation}
        \task{$n^2$}
        \justification[=]{substitute based on observation}
        \dijk{$(2k)^2$}
        \justification[=]{?}
        \dijk{$4 k^2$}
      \end{nested_derivation}
      \andbutso{$n^2 = 4 k^2$}
      now prove that 4 divides 4k\^{}2.\\
      Then prove that 4 nearly divides 4k\^{}2 + 4k + 1
    \end{nested_derivation}
  \end{structured_derivation}  
\end{Answer}

%unanswered
\begin{Exercise} [number=17]
  Prove the remaining items of THEOREM 2.10 (p. 45). To prove $\Phi \equiv \Psi$ means [something similar to proving set equivalence].
\end{Exercise}
  