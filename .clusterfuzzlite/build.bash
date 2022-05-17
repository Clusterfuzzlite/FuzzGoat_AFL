# Build afl-fuzz and FuzzingEngine.a
./build_afl.bash
# Compile target using ASan, coverage instrumentation, and link against FuzzingEngine.a
$CXX -fsanitize=address -fsanitize-coverage=trace-pc-guard fuzzer.c FuzzingEngine.a -o fuzzer
# Test out the build by fuzzing it. INPUT_CORPUS is a directory containing files. Ctrl-C when done.
AFL_SKIP_CPUFREQ=1 ./afl-fuzz -i $INPUT_CORPUS -o output -m none ./fuzzer
# Create a fuzzer build to upload to ClusterFuzz.
zip fuzzer-build.zip fuzzer afl-fuzz afl-showmap
