\LoadClass[12pt,letterpaper]{article}

\usepackage{breqn}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{fancyhdr}
\usepackage{pgfplots}
\usepackage{xparse}

\usepackage[margin=1in]{geometry}

\pgfplotsset{compat=1.16}

\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\renewcommand{\arraystretch}{1.4}
\renewcommand{\quad}{\qquad}

\fancyhf{}
\rfoot{Page \thepage}

% Angle measurements
\renewcommand{\deg}{^{\circ}}
\newcommand{\rad}{\text{ rad}}

% Rounding
\newcommand{\sig}[1]{\text{ ($#1$ s.f.)}}
\newcommand{\dec}[1]{\text{ ($#1$ d.p.)}}

% Utility commands
\newcommand{\inverse}[1]{\frac{1}{#1}}
\newcommand{\floor}[1]{\lfloor #1 \rfloor}
\newcommand{\ceil}[1]{\lceil #1 \rceil}
\newcommand{\abs}[1]{\lvert #1 \rvert}
\newcommand{\round}[1]{\lfloor #1 \rfloor}

% Spacing after therefore
\let\oldtherefore\therefore
\renewcommand\therefore{\oldtherefore\mskip\thickmuskip}

% Homework Environment & Titles
\renewcommand{\title}[1]{\section*{\texttt{#1}}}

\NewDocumentEnvironment{arr}{o}
	{
		\[
			\large
			\begin{array}{c}
				\IfNoValueTF{#1}{}{\tag{#1}}
	}
	{
			\end{array}
		\]
	}

% Question Counter
\newcounter{questionCount}
\setcounter{questionCount}{0}

\newcommand{\skipquestions}[1]{\setcounter{questionCount}{#1}}

\NewDocumentCommand{\question}{o}{
	\paragraph{Question \thequestionCount}
	\IfNoValueTF{#1}{}{\textit{#1}}
	\addtocounter{questionCount}{1}
}
