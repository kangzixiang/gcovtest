
CURRENT_DIR=$(cd $(dirname $0); pwd)
FILE=${CURRENT_DIR}/products

if [ ! -d "$FILE" ]; then
    echo "$FILE not exist"
    mkdir ${FILE}
fi

gcc -fprofile-arcs -ftest-coverage -o ./products/main main.c
gcov main.c
./products/main
lcov -d . -t './products/main' -o './products/main.info' -b . -c
genhtml -o ./products/result ./products/main.info