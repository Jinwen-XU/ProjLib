<!-- Copyright (C) 2021 by Jinwen XU -->

# ProjLib Toolkit

A collection of tools that help you write LaTeX document. With `PLtoolkit` loaded, you no longer need to set up the theorem environments nor configure the appropriate multilingual settings.

1. `PLamssim.sty`
    - Simulate some features of amsart in the standard classes
1. `PLauthor.sty`
    - Enhanced author information block
1. `PLdate.sty`
    - Offer a macro `\PLdate` to convert `yyyy-mm-dd` to normal datetime format, with multi-language support
1. `PLdraft.sty`
    - Useful macros during the draft stage: `\dnf` and `\needgraph`, with multi-language support
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

> Since `PLthm.sty` (and thus `PLtoolkit.sty`) uses `cleveref`, it should be loaded after `varioref` and `hyperref`.

Demonstration:
```latex
\documentclass{amsart}
\usepackage[a4paper,margin=.75in]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage[palatino]{PLtoolkit}

%% You can also comment the above lines and try the following (require xelatex or lualatex):
% \documentclass[a4paper,allowbf]{lebhart}
% \usepackage{PLtoolkit}

%% Using \UseLanguage to select language, by default "English" is selected
\UseLanguage{French} % Use French from here

\begin{document}

\title{Le Titre}
\author{Auteur 1}
\address{Adresse 1}
\email{\href{Courriel 1}{Courriel 1}}
\author{Auteur 1}
\address{Adresse 1}
\email{\href{Courriel 2}{Courriel 2}}
\date{\PLdate{2022-04-01}}
\subjclass{*****}
\keywords{...}

\begin{abstract}
    Ceci est un résumé. \dnf<Plus de contenu est nécessaire.>
\end{abstract}

\maketitle

\section{Un théorème}

%% Theorem-like environments can be used directly
\begin{theorem}\label{thm:abc}
    Ceci est un théorème.
\end{theorem}

Référence du théorème: \cref{thm:abc} % It is recommended to use clever reference

\end{document}
```

# License

This work is released under the LaTeX Project Public License, v1.3c or later.
