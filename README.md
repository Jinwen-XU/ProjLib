<!-- Copyright (C) 2021-2022 by Jinwen XU -->

![image](https://github.com/Jinwen-XU/ProjLib/raw/main/logo/ProjLib-logo.png)

# The `ProjLib` Toolkit

> **ProjLib** can be interpreted as "***Proj**ect **Lib**rary*" (in English), or as "***Proj**et **Lib**re*" (in French, meaning "*Free Project*").

> **This bundle is dated 2022/06/15. Please note that the documentations are not yet up-to-date.**

## Introduction

`ProjLib` is a collection of tools that help you write LaTeX document. With the main package `ProjLib` loaded (note that it is *case-sensitive*), you no longer need to manually configure the appropriate multilingual settings nor to set up the theorem-like environments. In addition, a series of auxiliary functionalities are introduced.

To get started, simply put this line in your preamble:
```latex
\usepackage{ProjLib}
```
> For the options and detailed usage, please refer to the documentation.


## The modules

> Each module correspond to a separate package, for example, the module `theorem` is `projlib-theorem.sty`.

The modules include:
1. module `author` - *Enhanced author information block*
    - Offering `\address`, `\curraddr` and `\email`.
    - Write in the AMS fashion (with option `ams-fashion`):
        - Support `\dedicatory`, `\keywords` and `\subjclass`
        - `\thanks` can be written outside `\author`;
        - The `abstract` environment can be placed before `\maketitle`.
1. module `datetime` - *Convert numeric date-time string to natural language*
    - `\TheDate` and `\Thedate` for converting numeric date-time string to natural language, with multi-language support (if the command names `\TheDate` or `\Thedate` are occupied, then one can switch to the longer version `\ProjLibDate` and `\ProjLibdate`).
    - `\ProjLibToday` and `\ProjLibToday` (with the module `language` enabled, `\today` is redefined into `\ProjLibToday`, and thus supports the arguments like `only-year-month`).
    - Multiple input and output format available.
1. module `draft` - *Useful commands during draft stage*
    - `\DNF` for marking unfinished part. In addition, a report of all unfinished places shall be printed at the last of your document.
1. module `font` - *Font selection and configuration*
    - Supporting Palatino, Times, Garamond, Biolinum, Noto, etc.
1. module `language` - *Multi-language configuration*
    - `\UseLanguage`, `\UseOtherLanguage` for selecting languages, and `\AddLanguageSetting` for adding language-specific settings.
    - `\DefineMultilingualText` for defining multilingual text strings.
    - Currently support Chinese (simplified and traditional), English, French, German, Italien, Japanese, Portuguese (European and Brazilian), Russian and Spanish.
1. module `logo` - *The ProjLib logo*
    - Draw the `ProjLib` logo in colorful or colorless fashion.
1. module `math` - *Efficient math setup*
    - `\DefineOperator` and `\DefineShortcut` for setting up math macros efficiently
    - `\ListOfSymbols` for printing list of symbols
1. module `paper` - *Configuration of the paper style*
    - Paper style configuration, with the themes `yellow`, `green`, `light gray`, `gray`, `dark`, etc.
1. module `theorem` - *Configuration of theorem-like environments*
    - Setting up theorem-like environments based on the package `create-theorem`
        - `\CreateTheorem`, `\SetTheorem` and more...
        - In particular, supporting the modes `name as is` and `name as context` for referencing names.
    - Supporting the modes `simple name` and `complex name` for the referencing names.
    - `\SwitchTheoremNumbering` and `\DisableTheoremNumbering` for manipulating the numbering.
    - Preset environments include: `application`, `assertion`, `assumption`, `axiom`, `claim`, `conclusion`, `conjecture`, `construction`, `convention`, `corollary`, `definition`, `definition-proposition`, `definition-theorem`, `example`, `exercise`, `fact`, `hypothesis`, `lemma`, `notation`, `observation`, `postulate`, `problem`, `property`, `proposition`, `question`, `recall`, `remark`, `theorem`, and the corresponding unnumbered version with an asterisk `*` in the name.
1. module `titlepage` - *Commands for rendering the title page*
    - Currently support two title page styles: `default` and `simple`.

> Since the module `theorem` uses `cleveref`, it should be loaded after `varioref` and `hyperref` (same for the main package `ProjLib`).

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

# License

This work is released under the LaTeX Project Public License, v1.3c or later.
