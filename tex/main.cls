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

\NewDocumentCommand{\question}{o}{
	\paragraph{Question \thequestionCount}
	\IfNoValueTF{#1}{}{\textit{#1}}
	\addtocounter{questionCount}{1}
}

	