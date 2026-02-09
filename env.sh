# Source this file to use refl-index from any directory.
#   source /sdf/data/lcls/ds/prj/prjdat21/results/cwang31/refl-index/env.sh

_REFL_INDEX_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export UV_CACHE_DIR=/sdf/data/lcls/ds/prj/prjdat21/results/cwang31/.UV_CACHE

# Wrap refl-index so `uv run --project` is handled automatically
refl-index() {
    uv run --project "$_REFL_INDEX_DIR" refl-index "$@"
}
