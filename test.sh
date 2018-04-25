BIOSYNTAX="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "$BIOSYNTAX"
SOURCE="${BIOSYNTAX}/vim/"
echo "$SOURCE"
FPATH=~/.vim/syntax/
TPATH=~/.vim/ftdetect/
THEMES=(`find "${SOURCE}/ftdetect/" -name "*.vim" -print`)
FILES=(`find "${SOURCE}/syntax" -name "*.vim" -print`)

echo ${THEMES[1]}
echo ${FILES[1]}
