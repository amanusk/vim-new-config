:set tabstop=4 softtabstop=4 shiftwidth=4 expandtab


" Indent following lines to the indentation of previous line.
set autoindent

" set indentation
set cindent

" Display when in Insert, Append or Replace mode on the bottom side
set showmode

" Show line numbers on right side of each line
set number

" Display line and column numbers in bottom right side
set ruler

" filetype
filetype plugin indent on

set nocompatible
set backspace=2
set foldmethod=marker

" set color sheme
colorscheme default
" Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256

" Hide the mouse when typing text
set mousehide

" Ebanle mouse
set mouse=a

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>


" Switch on syntax highlighting if it wasn't on yet.
if !exists("syntax_on")
    syntax on
endif

" Switch on search pattern highlighting.
set hlsearch
" set split to right and below instead of left and above
set splitright
set splitbelow

" toggle hidden chrachters: Deprecated
" nmap <leader>l :set list!<CR>

" Launch white space removal
nmap _$ :call <SID>StripTrailingWhitespaces()<CR>

" remove white spaces accross the file
function! <SID>StripTrailingWhitespaces()
    " save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history,
    let @/=_s
    call cursor(l, c)
endfunction"

" open files easly
map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>sp :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>vsp :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

" run Wrap to change the wrapping to words
command! -nargs=* Wrap set wrap linebreak nolist
Wrap

" map numbers on of toggle
map <leader>nu :set nu!<CR>

" Move easyly between visual lines
map <C-j> gj
map <C-k> gk


" some iretating commands
command! Q q
command! W w
command! Wq wq
command! WQ wq
command! WA wa
command! Wa wa
command! Qa qa
command! QA qa

" Highlight white spaces
highlight RedundantSpaces ctermbg=green guibg=lightgreen
match RedundantSpaces /\s\+$/

" Refresh the page
map <F5> :edit <cr>

" set vertical column to 80 characters
set colorcolumn=80

" always show statusline
set laststatus=2

" Open you vimrc from everywhere
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Source your vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" Do not sort by name
let g:tagbar_sort = 0
" Set width to 30
let g:tagbar_width = 30

" Continue where you left off on each file
if has("autocmd")
    autocmd BufReadPost *
                \ if line("'\"") > 1 && line("'\"") <= line("$") |
                \   exe "normal! g`\"" |
                \ endif
endif

set relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END



" :SW sudo saves the file
" (useful for handling the permission-denied error)
command! SW w !sudo tee % > /dev/null

" This is totally awesome - remap jj to escape in insert mode.  You'll never type jj anyway, so it's great!
inoremap jj <esc>
nnoremap JJJJ <nop>


" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Make sure that extra margin on left is removed
set foldcolumn=0

" Enable Ctrl-A/Ctrl-X to work on octal and hex numbers, as well as characters
set nrformats=octal,hex ",alpha



" Help menu
inoremap <F1> <Esc>
noremap <F1> :call MapF1()<CR>

" Open help menu of F1
function! MapF1()
    if &buftype == "help"
        exec 'quit'
    else
        exec 'help'
    endif
endfunction

" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
