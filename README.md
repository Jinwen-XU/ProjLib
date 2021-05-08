<!-- Copyright (C) 2021 by Jinwen XU -->

# ProjLib Toolkit

A collection of tools that help you write LaTeX document. With `PLtoolkit` loaded, you no longer need to set up the theorem environments nor configure the appropriate multilingual settings.

1. `PLamssim.sty`
    - Simulate some features of amsart
1. `PLauthor.sty`
    - Enhanced author information block
1. `PLdate.sty`
    - Offer a command to convert `yyyy-mm-dd` to normal datetime format, with multi-language support
1. `PLdraft.sty`
    - Some useful macros for the draft stage: `\dnf` and `\needgraph`, with multi-language support
1. `PLlang.sty`
    - Multi-language configuration based on `babel` or `polyglossia`
    - Currently support Chinese (simplified and traditional), English, French, German, Japanese and Russian, more to be added
1. `PLlogo.sty`
    - Draw the ProjLib logo
1. `PLpaper.sty`
    - Paper style configuration
1. `PLthm.sty`
    - Theorem setup and configuration, with multi-language support
1. `PLtoolkit.sty`, *the all-in-one solution*
    - A collective interface of ProjLib Toolkit, loading all the packages above
    - Provide some pre-defined font configuration

> Since `PLthm.sty` (and thus `PLtoolkit.sty`) uses `cleveref`, it should be loaded after `hyperref`.

Demonstration:
```latex
\documentclass{amsart}
\usepackage[a4paper,margin=.75in]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage[palatino]{PLtoolkit}

\UseLanguage{French}

\begin{document}

\title{Some Title}
\author{Some Name}
\date{\PLdate{2021-04-01}}
\subjclass{*****}

\begin{abstract}
    Some abstract \dnf<need more text>
\end{abstract}

\maketitle

\UseLanguage{English}

\section{Theorems}

\begin{theorem}\label{thm:abc}
    Some text. \dnf<need more text>
\end{theorem}

Reference: \cref{thm:abc}

\end{document}
```

# License

This work is released under the LaTeX Project Public License, v1.3c or later.
