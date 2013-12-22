\documentclass{report}
\usepackage{haskell_exercises}

\usepackage{amssymb}

%include polycode.fmt
%format <+> = "\xor"
%format ^ = "^"

% TODO put the above in an \input-able place
% TODO I wish grave marks (`) weren't rendered like left-single-quotes.

\begin{document}

\chapter{Getting Started}
%include chap1_exercises.lhs

\chapter{Talking about Mathematical Objects}
%include chap2.3_exercises.tex
%include chap2.6_exercises.lhs
%include chap2.7_exercises.lhs
%include chap2.8_exercises.lhs

\chapter{The Use of Logic: Proof}
\section{Proof Style}
\section{Proof Recipes}
%include chap3.3_exercises.lhs
%include chap3.4_exercises.lhs
\section{Summary of the Proof Recipes}
%include chap3.6_exercises.lhs
%include chap3.7_exercises.lhs



\chapter{Sets, Types and Lists}
%include chap4.1_exercises.lhs
%include chap4.2_exercises.lhs
%include chap4.3_exercises.lhs
%include chap4.4_exercises.tex
%include chap4.5_exercises.tex

\chapter{Relations}
%include chap5.2_exercises.tex

\end{document}
