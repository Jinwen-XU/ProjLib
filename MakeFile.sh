DIR="$( cd "$( dirname "$0" )" && pwd )"
cd $DIR

latex ProjLib.ins
latex ProjLib-doc.ins

latexmk -xelatex -silent ProjLib-doc-cn.tex
latexmk -xelatex -silent ProjLib-doc-en.tex
latexmk -xelatex -silent ProjLib-doc-fr.tex
