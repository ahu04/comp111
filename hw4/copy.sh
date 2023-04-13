#!/bin/bash
RESULTS_FILE="test_results.txt"
VALGRIND_FILE="valgrind_results.txt"
TEST_PROGRAM="./test"
TEST_DIR="/comp/111/assignments/fs/tests"

umask 007

TMP_DIR=`mktemp -d`
cp jumbo_file_system.c $TMP_DIR

pushd $TMP_DIR > /dev/null
ln -s $TEST_DIR/Makefile
make test

if [ -f "$TEST_PROGRAM" ]
then
  # RUN TESTS, output to test results file
  echo $USER > "$RESULTS_FILE"
  echo >> "$RESULTS_FILE" # blank line

  timeout -k 2m 1m "$TEST_PROGRAM" -f >> "$RESULTS_FILE" 2>&1
  if [ $? -eq 124 ]
  then
    echo TIMED OUT!
    echo TIMED OUT! >> "$RESULTS_FILE"
  fi

  echo >> "$RESULTS_FILE" # blank line
  echo "Valgrind results are in $VALGRIND_FILE" >> "$RESULTS_FILE"

  # RUN VALGRIND, output to valgrind file
  echo $USER > "$VALGRIND_FILE"
  echo >> "$VALGRIND_FILE" # blank line

  timeout -k 2m 1m valgrind --leak-check=full --track-origins=yes "$TEST_PROGRAM" > /dev/null 2>> "$VALGRIND_FILE"
  if [ $? -eq 124 ]
  then
    echo TIMED OUT!
    echo TIMED OUT! >> "$VALGRIND_FILE"
  fi
fi

popd > /dev/null
cp -f $TMP_DIR/*_results.txt ./
rm -rf $TMP_DIR

echo # blank line
echo Test results are in "$RESULTS_FILE"
echo Valgrind results are in "$VALGRIND_FILE"
echo Descriptions of each test case can be found in $TEST_DIR/test_case_descriptions.txt
