<!-- Copyright (C) 2021-2024 by Jinwen XU -->

<!-- ![image](https://github.com/Jinwen-XU/ProjLib/raw/main/logo/ProjLib-logo.png) -->
<div align=center><img height="150" src="https://github.com/Jinwen-XU/ProjLib/raw/main/logo/ProjLib-logo.png"/></div>

# The `ProjLib` Toolkit

> **This bundle is dated 2024/11/07.**

> **New documentations are still being written. For now, only the core code is included in TeX Live 2024 and MiKTeX (old documentations have been removed from the distribution).**

## Introduction

> **ProjLib** can be interpreted as "***Proj**ect **Lib**rary*" (in English), or as "***Proj**et **Lib**re*" (in French, meaning "*Free Project*").

`ProjLib` is a collection of tools that help you write LaTeX document. With the main package `ProjLib` loaded (note that it is *case-sensitive*), you no longer need to manually configure the appropriate multilingual settings nor to set up the theorem-like environments. In addition, a series of auxiliary functionalities are introduced.

To get started, simply put this line in your preamble:
```latex
\usepackage{ProjLib}
```
> For the options and detailed usage, please refer to the documentation.


## The modules

> Each module corresponds to a separate package, for example, the module `theorem` is `projlib-theorem.sty`. These modules are managed by the main package `ProjLib.sty`.

The modules include:
1. module `author` - *Enhanced author information block*
    - Offering `\address`, `\curraddr` and `\email`, etc.
    - Allow writing in the AMS fashion (with option `ams-fashion`):
        - support `\dedicatory`, `\keywords` and `\subjclass`;
        - `\thanks` can be written outside `\author`;
        - the `abstract` environment can be placed before `\maketitle`.
1. module `datetime` - *Convert numeric date-time string to natural language*
    - `\TheDate` and `\Thedate` for converting numeric date-time string to natural language, with multi-language support (if the command names `\TheDate` or `\Thedate` are occupied, then one can switch to the longer version `\ProjLibDate` and `\ProjLibdate`).
    - `\ProjLibToday` and `\ProjLibToday` (with the module `language` enabled, `\today` is redefined into `\ProjLibToday`, and thus supports additional arguments like `only-year-month`).
    - Multiple input and output format available.
1. module `draft` - *Useful commands during draft stage*
    - `\DNF` for marking unfinished part. In addition, a report of all unfinished places shall be printed at the last of your document.
    - Reimplemented `\blindtext` to support more languages.
1. module `font` - *Font selection and configuration*
    - Supporting New Computer Modern / Latin Modern, Palatino, Times, Garamond, Bembo, Biolinum, Noto, etc.
1. module `language` - *Multi-language configuration*
    - `\UseLanguage`, `\UseOtherLanguage` for selecting languages, and `\AddLanguageSetting` for adding language-specific settings.
    - `\DefineMultilingualText` for defining multilingual text strings.
    - Currently support Chinese (simplified and traditional), English, French, German, Italien, Japanese, Portuguese (European and Brazilian), Russian and Spanish.
1. module `logo` - *The ProjLib logo*
    - Draw the `ProjLib` logo in colorful or colorless fashion.
1. module `math` - *Efficient math setup*
    - `\DefineOperator` and `\DefineShortcut` for setting up math macros efficiently.
    - `\ListOfSymbols` for printing list of symbols.
1. module `paper` - *Configuration of the paper style*
    - Paper style configuration, with the themes `light yellow`, `yellow`, `green`, `light gray`, `gray`, `dark`, etc.
1. module `text` - *Text-related commands*
    - Provide a few useful commands such as `\ie`, `\eg`, `\cf`, `\etc` ; and if you have your own version defined, they won't interfere with your definition.
    - `\ItemDescription` for writing leading description to items in `itemize` or `enumerate`.
1. module `theorem` - *Configuration of theorem-like environments*
    - Setting up theorem-like environments based on the package `create-theorem`
        - `\CreateTheorem`, `\SetTheorem` and more...
        - In particular, supporting the modes `name as is` and `name as context` for the referencing names.
    - Offering two modes `complex names` (default) and `simple names` (better visual effect but less correct grammar) for the referencing names of those supported theorem-like environments.
    - `\SwitchTheoremNumbering` and `\DisableTheoremNumbering` for manipulating the numbering.
    - Preset environments include: `application`, `assertion`, `assumption`, `axiom`, `claim`, `commentary`, `conclusion`, `conjecture`, `construction`, `convention`, `corollary`, `definition`, `definition-proposition`, `definition-theorem`, `example`, `exercise`, `fact`, `hypothesis`, `lemma`, `motivation`, `notation`, `observation`, `postulate`, `problem`, `property`, `proposition`, `question`, `recall`, `remark`, `theorem`, their plural version (among the most commonly used are `examples`, `facts` and `notations`), and the corresponding unnumbered version with an asterisk `*` in the name.
1. module `titlepage` - *Interface for title page rendering*
    - Currently support four title page styles: `default`, `academic`, `simple` and `fancy`.

> Since the module `theorem` uses `cleveref`, it should be loaded after `varioref` and `hyperref` (same for the main package `ProjLib`).

> Package dependencies:
> - module `author`: [`regexpatch`](https://ctan.org/pkg/regexpatch), [`scontents`](https://ctan.org/pkg/scontents); it loads the module `language` internally.
> - module `datetime`: [`relsize`](https://ctan.org/pkg/relsize).
> - module `draft`: [`pgf`](https://ctan.org/pkg/pgf), [`ulem`](https://ctan.org/pkg/ulem); it loads the module `language` internally.
> - module `font`: [`anyfontsize`](https://ctan.org/pkg/anyfontsize), [`microtype`](https://ctan.org/pkg/microtype), [`setspaceenhanced`](https://ctan.org/pkg/setspaceenhanced), and a number of font packages depending on the specified option.
> - module `language`: [`babel`](https://ctan.org/pkg/babel), [`csquotes`](https://ctan.org/pkg/csquotes), [`setspaceenhanced`](https://ctan.org/pkg/setspaceenhanced), [`silence`](https://ctan.org/pkg/silence).
> - module `logo`: [`pgf`](https://ctan.org/pkg/pgf).
> - module `math`: [`amsfonts`](https://ctan.org/pkg/amsfonts), [`mathrsfs`](https://ctan.org/pkg/mathrsfs), [`mathtools`](https://ctan.org/pkg/mathtools).
> - module `paper`: [`xcolor`](https://ctan.org/pkg/xcolor).
> - module `text`: it loads the module `paper` internally.
> - module `theorem`: [`amsthm`](https://ctan.org/pkg/amsthm), [`create-theorem`](https://ctan.org/pkg/create-theorem), [`mathtools`](https://ctan.org/pkg/mathtools), [`silence`](https://ctan.org/pkg/silence); it loads the module `language` internally.
> - module `titlepage`: [`pgf`](https://ctan.org/pkg/pgf); it loads the modules `logo` and `paper` internally.


<!-- ## Regarding the files and the compilation of documentations -->

### How to get these files
You can get the `.sty` files mentioned above by compiling `ProjLib.ins`:
```
latex ProjLib.ins
```
<!--
### How to get the source of the documentation
You can get the `.tex` source files of the documentation by compiling `ProjLib-doc.ins`:
```
latex ProjLib-doc.ins
```

### How to compile the documentation
It is recommended to use `latexmk` with option `-xelatex`:
```
latexmk -xelatex ProjLib-doc-**.tex
```
Here `**` should be replaced with the language identifier, such as `en`.

### Automation
All these can be done with the given script `MakeFile.sh`.
-->

## License

This work is released under the LaTeX Project Public License, v1.3c or later.
