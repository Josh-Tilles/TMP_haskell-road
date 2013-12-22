\section{Reasoning and Computation with Primes}

%unanswered
\begin{Exercise} [number=34]
    \ExePart Let $A = \Set{4n + 3}{n \in \naturals}$. Show that $A$ contains infinitely many prime numbers.
    
    \ExeText Hint: any prime > 2 is odd, hence of the form $4n + 1$ or $4n + 3$. Assume that there are only finietly many primes of the form $4n + 3$, say $p_1, \dots p_m$. Consider the number $N = 4p_1 \dots p_m - 1 = 4(p_1 \dots p_m - 1) + 3$. Argue that $N$ must contain a factor $4q + 3$, using the fact that $(4a + 1)(4b + 1)$ is of the form $4c + 1$.
    
    \ExePart Use @filter prime [ 4*n + 3 | n <- [0..] ]@ to generate the primes of this form.
\end{Exercise}

%unanswered
\begin{Exercise} [number=36]
    It is not very difficult to show that if $n$ is composite, $M_n = 2^n - 1$ is composite too. Show this.
    \ExeText Hint: Assume that $n = ab$ and probe that $xy = 2^n - 1$ for the numbers $x = 2^b - 1$ and $y = 1 + 2^b + 2^{2b} + \cdots + 2^{(a-1)b}$.
\end{Exercise}

%unanswered
\begin{Exercise} [number=38]
A slightly faster way to generate the primes is by starting out from the odd numbers. The stepping and marking will work as before, for you count $k$ positions in the odd numbers starting from any odd number $a = 2n + 1$, you will move on o number $(2n + 1) + 2k$, and if $a$ is a multiile of $k$, then so is $a + 2k$. Implement a function @fasterprimes :: [Integer]@ using this idea. The odd natural numbers, staring from 3, can be generated as follows:
\begin{code}
oddsFrom3 :: [Integer]
oddsFrom3 = 3 : map (+2) oddsFrom3
\end{code}
\end{Exercise}

%unanswered
\begin{Exercise} [number=39]
Write a Haskell program to refute the following statement about prime numbers: ``if $p_1, \dots, p_k$ are all the primes $< n$, then $(p_1 \times \cdots \times p_k) + 1$ is a prime.''
\end{Exercise}

%unanswered
\begin{Exercise} [number=41]
How would you go about yourself to prove the fact Euclid proved? (if $2^n - 1$ is prime, then $2^{n-1}(2^n - 1)$ is perfect). Here is a hint: if $2^n - 1$ is prime, then the proper divisors of $2^{n-1}(2^n - 1)$ are
\begin{displaymath}
1, 2, 2^2, \dots, 2^{n-1}, 2^n - 1, 2(2^n - 1), 2^2(2^n - 1), \dots, 2^{n-2}(2^n - 1).
\end{displaymath}
\end{Exercise}

%unanswered
\begin{Exercise} [number=42]

\end{Exercise}

%unanswered
\begin{Exercise} [number=43]

\end{Exercise}