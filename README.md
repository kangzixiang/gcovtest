1. gcc -fprofile-arcs -ftest-coverage -o main main.c
2. gcov main.c
3. lcov -d . -t 'main' -o 'main.info' -b . -c
4. genhtml -o result main.info