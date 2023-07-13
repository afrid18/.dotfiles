syntax on

" Color Scheme
colorscheme morning

" Tabs and indentation
set tabstop=4
set softtabstop=-1
set shiftwidth=0
set expandtab
set ai
set nu
filetype indent on

" for Makefiles
autocmd FileType make setlocal noexpandtab

" Adding leader key
let mapleader = ","

" Filetype plugins on
filetype plugin on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=80

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


" Searching for the string
set hlsearch
set incsearch

" Setting ruler
set ruler
highlight Comment ctermfg=green
set noswapfile
set undodir=~/.config/vim/undodir
set undofile
set encoding=utf-8

" Fast terminal
set lazyredraw
set ttyfast

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" set 7 lines from top and bottom when moving vertically using j/k
set so=9

" FInding files:
" search down into subfolders
" Provides tab-completion for all file-related tasks

set path+=**

" Display all the matching files when we tab complete
set wildmenu


" SETTING <C-a> <C-x> to add and subtract for decimals and alphabets
set nrformats+=alpha

" Mapping carriage return to stop highlighting after hitting <CR> twice
nnoremap <CR> :noh<CR><CR>

" Yanking into system clipboard
set clipboard+=unnamedplus

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    vmap <D-j> <M-j>
    vmap <D-k> <M-k>
endif


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2
set statusline=\%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
" function! GitBranch()
"     return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
" endfunction
"
" function! StatuslineGit()
"     let l:branchname = GitBranch()
"     return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
" endfunction

" set statusline=
" set statusline+=%#PmenuSel#
" set statusline+=%{StatuslineGit()}
" set statusline+=%#LineNr#
" set statusline+=\ %f
" set statusline+=%m\
" set statusline+=%=
" set statusline+=%#CursorColumn#
" set statusline+=\ %y
" set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
" set statusline+=\[%{&fileformat}\]
" set statusline+=\ %p%%
" set statusline+=\ %l:%c
" set statusline+=\ 
"
function! AddedWordsGit()
  return system("git diff --word-diff=porcelain " . expand("%") . " 2>/dev/null | grep -e '^+[^+]' | wc -w | xargs | tr -d '\n'")
endfunction
function! DeletedWordsGit()
  return system("git diff --word-diff=porcelain " . expand("%") . " 2>/dev/null | grep -e '^-[^-]' | wc -w | xargs | tr -d '\n'")
endfunction
function! DifferenceWordsGit()
  return system("echo -n $(($(git diff --word-diff=porcelain " . expand("%") . " 2>/dev/null | grep -e '^+[^+]' | wc -w | xargs | tr -d '\n') - $(git diff --word-diff=porcelain " . expand("%") . " 2>/dev/null | grep -e '^-[^-]' | wc -w | xargs | tr -d '\n')))")
endfunction
  
set statusline=
set statusline+=[%n] 
set statusline+=\ 
set statusline+=\%<%f%m
set statusline+=\ 
set statusline+=\%{&spelllang}
set statusline+=\ %=
set statusline+=\ 
set statusline+=\%{wordcount().words}\ words
set statusline+=\  
set statusline+=\ %{AddedWordsGit()}
set statusline+=\ %{DeletedWordsGit()}


""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""" Plugings using vim-plug""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" call plug#begin()
" Plug 'preservim/NERDTree'
" Plug 'preservim/nerdcommenter'
" Plug 'airblade/vim-gitgutter'
" Plug 'jiangmiao/auto-pairs'
" Plug 'tpope/vim-surround'
" Plug 'pangloss/vim-javascript'
" " Plug 'othree/yajs.vim'
" " Plug 'othree/es.next.syntax.vim'
" " Plug 'codota/tabnine-vim'
" " Plug 'neoclide/coc.nvim'
" call plug#end()



" NERDTree short-hands

" " Start NERDTree. If a file is specified, move the cursor to its window.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
