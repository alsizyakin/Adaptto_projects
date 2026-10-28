#!/bin/bash
# Run the scenarios of fwl_scenarios.m in parallel MATLAB batch sessions.
#   run_parallel.sh [jobs] [runDir] [tag ...]
# jobs   number of simultaneous MATLAB sessions (default 6, ~3 GB RAM each)
# runDir output folder (default <repo>/work/fw_limiter)
# tag    scenarios to run (default: every scenario with doc = true)
set -euo pipefail

HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)
JOBS=${1:-6}
RUN_DIR=${2:-$ROOT/work/fw_limiter}
shift $(( $# < 2 ? $# : 2 ))
mkdir -p "$RUN_DIR/logs"
RUN_DIR=$(cd "$RUN_DIR" && pwd)

if [ $# -gt 0 ]; then
    TAGS="$*"
else
    TAGS=$(matlab -batch "addpath('$HERE'); s = fwl_scenarios(); fprintf('TAG %s\n', s([s.doc]).tag)" \
        | sed -n 's/^TAG //p')
fi

run_one() {
    local tag=$1
    if matlab -batch "addpath('$HERE'); run_scenario('$tag', '$RUN_DIR')" > "$RUN_DIR/logs/$tag.log" 2>&1; then
        echo "done   $tag  ($(grep -o 'done in .*' "$RUN_DIR/logs/$tag.log"))"
    else
        echo "FAILED $tag  (see $RUN_DIR/logs/$tag.log)"
    fi
}
export -f run_one
export HERE RUN_DIR

echo "running into $RUN_DIR with $JOBS jobs:" $TAGS
printf '%s\n' $TAGS | xargs -P "$JOBS" -I{} bash -c 'run_one "$1"' _ {}
