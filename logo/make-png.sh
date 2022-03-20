DIR="$( cd "$( dirname "$0" )" && pwd )"
cd $DIR

convert -density 640 ProjLib-logo.pdf  -format png ProjLib-logo.png
