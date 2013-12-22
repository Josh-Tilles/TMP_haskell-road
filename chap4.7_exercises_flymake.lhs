\section{List Comprehension and Database Query}

\begin{code}
import DB (db)

characters  = nub  [ x | ["play",_,_,x]   <- db ]
movies      =      [ x | ["release",x,_]  <- db ]
actors      = nub  [ x | ["play",x,_,_]   <- db ]
directors   = nub  [ x | ["direct",x,_]   <- db ]
dates       = nub  [ x | ["release",_,x]  <- db ]
universe    = nub (characters ++ actors ++ directors ++ movies ++ dates)
\end{code}

Next, define lists of tuples, again by list comprehension:

(I tried to name the variables mnemonically)
\begin{code}
direct   = [ (d,m)    | ["direct",d,m]   <- db ]
act      = [ (a,m)    | ["play",a,m,_]   <- db ]
play     = [ (a,m,c)  | ["play",a,m,c]   <- db ]
release  = [ (m,y)    | ["release",m,y]  <- db ]
\end{code}

Finally, define one placed, two placed and three placed predicates by
means of lambda abstraction.

\begin{code}
characterP  = \ x -> x `elem` characters
actorP      = \ x -> x `elem` actors
movieP      = \ x -> x `elem` movies
directorP   = \ x -> x `elem` directors
dateP       = \ x -> x `elem` dates
actP        = \ (x,y) -> (x,y) `elem` act
releaseP    = \ (x,y) -> (x,y) `elem` release
directP     = \ (x,y) -> (x,y) `elem` direct
playP       = \ (x,y,z) -> (x,y,z) `elem` play
\end{code}

%unanswered
\begin{ExerciseList}
  Translate the following into queries:
  \Exercise ``Give me the films in which Robert De Niro or Kevin
  Spacey acted.''
  \Exercise ``Give me all films with Quentin Tarantino as actor or
  directory that appeared in 1994.''
  \Exercise ``Give me all films released after 1997 in which William
  Hurt did \emph{not} act.'' (emphasis mine)
\end{ExerciseList}
