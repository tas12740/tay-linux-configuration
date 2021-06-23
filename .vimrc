set nocompatible              " be iMproved, required
filetype off                  " required

set encoding=utf8

let mapleader=","
set number " Turn on line numbers
set noswapfile
set hlsearch
set ignorecase
set incsearch
" set spell spelllang=en_us
syntax enable
" Fix spelling map
nnoremap <leader>f 1z=
" Turn off spelling
nnoremap <leader>s :set spell!

" Turn vim bell off
set belloff=all

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
Plugin 'w0rp/ale'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'scrooloose/nerdtree-project-plugin'
Plugin 'scrooloose/nerdcommenter'
Plugin 'christoomey/vim-system-copy'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/fzf'
Plugin 'airblade/vim-gitgutter'
Plugin 'frazrepo/vim-rainbow'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'rust-lang/rust.vim'
Plugin 'morhetz/gruvbox'

" :PluginList - lists configured plugins
" :PluginInstall - installs plugins; append ! to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append ! to refresh local cache
" see :h vundle for more details or wiki for FAQ

call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on 

" colorscheme
set background=dark
" Candidates: elflord, industry, koehler, murphy, ron, torte
let g:gruvbox_italics=1
autocmd vimenter * ++nested colorscheme gruvbox

" NERDTree
nnoremap <C-n> :NERDTree<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:ailine#extensions#tabline#formatter = 'default'
" Options: dark, deus, badwolf, gruvbox
let g:airline_theme = 'dark'
let g:airline_powerline_fonts = 1

" vim-rainbow
let g:rainbow_active = 1

" gitgutter
nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterUndoHunk

" fzf
map ; :Files<CR>

" Lint:
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Tagbar
nmap <C-b> :TagbarToggle<CR>

" Nerd Commenter
" Create default mappings
" Default mappings:
" [count]<leader>cc |NERDCommenterComment| comment out line(s)
" [count]<leader>cn |NERDCommenterNested| same as cc but forces nesting
" [count]<leader>c<space> |NERDCommenterToggle| Toggles comment state of
" line(s)
" [count]<leader>cm |NERDCommenterMinimal| comments given line(s) using only
" one set of multipart delimiters
" [count]<leader>ci |NERDCommenterInvert| toggles comment state of line(s)
" individually
" [count]<leader>cs |NERDCommenterSexy| comments out selected lines with
" pretty block formatted layout
" [count]<leader>cy |NERDCommenterYank| same as cc except commented line(s)
" yanked first
" [count]<leader>c$ |NERDCommenterToEOL| comments current line from cursor to
" end of line
" [count]<leader>cA |NERDCommenterAppend| adds comment delimiters to end of
" line and goes into insert mode b/n them
" see more at https://vimawesome.com/plugin/the-nerd-commenter
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" vim-markdown
" zr: reduces fold level throughout the buffer
" zR: opens all folds
" zm: increases fold level throughout the buffer
" zM: folds everything all the way
" za: open a fold your cursor is on
" zA: open a fold your cursor is on recursively
" zc: close a fold your cursor is on
" zC: close a fold your cursor is on recursively
