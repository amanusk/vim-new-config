" Include all paths for solc compilation
let g:ale_solidity_solc_options="--allow-paths $(pwd)"

" ALE fixers
let g:ale_linters = {
\   'typescript': [],
\   'javascript': [],
\   'python': [],
\   'rust': [],
\   'go': [],
\   'json': [],
\   'solidity': ['solhint', 'solium', 'solc']
\}
