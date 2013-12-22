\documentclass{report}
\usepackage{haskell_exercises}

\usepackage{amssymb}
\newcommand*{\wrt}{w.r.t.}

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
%include chap2.6_exercises.tex
%include chap2.7_exercises.tex
%include chap2.8_exercises.lhs

\chapter{The Use of Logic: Proof}
\section{Proof Style}
\section{Proof Recipes}
%include chap3.3_exercises.lhs
%include chap3.4_exercises.tex
\section{Summary of the Proof Recipes}
%include chap3.6_exercises.tex
%include chap3.7_exercises.lhs



\chapter{Sets, Types and Lists}
%include chap4.1_exercises.tex
%include chap4.2_exercises.lhs
%include chap4.3_exercises.tex
%include chap4.4_exercises.tex
%include chap4.5_exercises.tex
%include chap4.6_exercises.lhs
%include chap4.7_exercises.lhs
%include chap4.8_exercises.lhs
%include chap4.9_exercises.lhs

\chapter{Relations}
%include chap5.1_exercises.tex
%include chap5.2_exercises.tex

\end{document}
