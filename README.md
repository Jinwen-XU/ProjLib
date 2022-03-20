<!-- Copyright (C) 2021-2022 by Jinwen XU -->

![image](https://github.com/Jinwen-XU/ProjLib/raw/main/logo/ProjLib-logo.png)

# The `ProjLib` Toolkit

The bundle is dated 2022/03/19

## **Important note**

The whole project is being rewritten with `expl3`. The new modules are basically finished but are **not yet documented**. They have filenames with the prefix "projlib-", and they are in many ways better and more powerful than their predecessors.

The new modules are:
- projlib-author
- projlib-datetime
- projlib-draft
- projlib-font
- projlib-language
- projlib-logo
- projlib-math
- projlib-paper
- projlib-theorem

Below is the old README.

---

> **ProjLib** can be interpreted as "***Proj**ect **Lib**rary*" (in English), or as "***Proj**et **Lib**re*" (in French).

## Introduction

`ProjLib` is a collection of tools that help you write LaTeX document. With the package `ProjLib` loaded (note that it is case-sensitive), you no longer need to set up the theorem-like environments nor to manually configure the appropriate multilingual settings. In addition, a series of auxiliary functionalities are introduced.

To get started, simply put this line in your preamble:
```latex
\usepackage{ProjLib}
```
> For the options and detailed usage, please refer to the documentation.

## The components
The components include:
1. `PJLauthor.sty`
    - Enhanced author information block
    - Offers `\address`, `\curraddr` and `\email`
    - Write in the AMS fashion (with option `amsfashion`):
        - Support `\dedicatory`, `\keywords` and `\subjclass`
        - `\thanks` can be written outside `\author`;
        - The `abstract` environment can be placed before `\maketitle`.
1. `PJLdate.sty`
    - Offers a macro `\PLdate` (or `\PJLdate`) to convert `yyyy-mm-dd` to normal datetime format, with multi-language support
1. `PJLdraft.sty`
    - Useful macros during the draft stage: `\dnf` and `\needgraph`, with multi-language support
1. `PJLlang.sty`
    - Multi-language configuration based on `babel` or `polyglossia`
    - Offers `\UseLanguage`, `\UseOtherLanguage` and `\AddLanguageSetting`
    - Currently support Chinese (simplified and traditional), English, French, German, Italien, Japanese, Portuguese (European and Brazilian), Russian and Spanish
1. `PJLlogo.sty`
    - Draw the ProjLib logo
1. `PJLmath.sty`
    - Useful math macros and shortcuts
1. `PJLpaper.sty`
    - Paper style configuration: yellow theme, dark theme and nord theme
1. `PJLthm.sty`
    - Theorem setup and configuration
    - Offers a macro `\CreateTheorem` for creating theorem-like environments with multi-language support
    - Preset environments include: `assumption`, `axiom`, `conjecture`, `convention`, `corollary`, `definition`, `definition-proposition`, `definition-theorem`, `example`, `exercise`, `fact`, `hypothesis`, `lemma`, `notation`, `observation`, `problem`, `property`, `proposition`, `question`, `remark`, `theorem`, and the corresponding unnumbered version with an asterisk `*` in the name.
1. `PJLtoolkit.sty` (this is the internal name of the `ProjLib` package)
    - A collective interface of ProjLib Toolkit, loading all the packages above
    - Provide some pre-defined font configuration

> Since `PJLthm.sty` (and thus `ProjLib.sty`) uses `cleveref`, it should be loaded after `varioref` and `hyperref`.

## How to get these files
You can get the `.sty` files mentioned above simply by compiling `ProjLib.ins`:
```
latex ProjLib.ins
```

## How to get the source of the documentation
You can get the `.tex` source files of the documentation by compiling `ProjLib-doc.ins`:
```
latex ProjLib-doc.ins
```

## How to compile the documentation
It is recommended to use `latexmk` with option `-xelatex`:
```
latexmk -xelatex ProjLib-doc-**.tex
```

## An example
```latex
\documentclass{amsart}
\usepackage[a4paper,margin=.75in]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage[palatino]{ProjLib}

%% You can also comment the above lines and try the following (require xelatex or lualatex):
% \documentclass[a4paper,allowbf]{lebhart}
% \usepackage[amsfashion]{ProjLib}

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
    Ceci est un résumé. \dnf<Some hint>
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
