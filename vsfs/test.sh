#!/bin/bash

# Directories
TEST_DIR="./testcases"
EXPECTED_DIR="./expected_output"
TMP_OUT="temp_output.txt"

# Make sure directories exist
if [ ! -d "$TEST_DIR" ]; then
    echo "Error: $TEST_DIR directory not found!"
    exit 1
fi

if [ ! -d "$EXPECTED_DIR" ]; then
    echo "Error: $EXPECTED_DIR directory not found!"
    exit 1
fi

# Iterate over all testcases
for src in "$TEST_DIR"/testcase*.c; do
    # Extract testcase number (e.g., 1 from testcase1.c)
    base=$(basename "$src" .c)
    num=${base#testcase}

    exe="testcase${num}.out"
    expected="$EXPECTED_DIR/testcase${num}.out"

    echo "=============================="
    echo "Running Testcase #$num"
    echo "=============================="

    # Compile
          gcc "$src" "simplefs-disk.c" "simplefs-ops.c" -o "$exe" 2> compile_error.txt
    if [ $? -ne 0 ]; then
        echo "❌ Compilation failed for $src"
        cat compile_error.txt
        continue
    fi

    # Run and capture output
    ./"$exe" > "$TMP_OUT" 2>&1

    # Compare output
    if diff -q "$TMP_OUT" "$expected" > /dev/null; then
        echo "✅ Testcase #$num PASSED"
    else
        echo "❌ Testcase #$num FAILED"
        echo "--- Expected ---"
        cat "$expected"
        echo "--- Got ---"
        cat "$TMP_OUT"
    fi

    # Cleanup
    rm -f "$exe"
done

# Final cleanup
rm -f "$TMP_OUT" compile_error.txt

