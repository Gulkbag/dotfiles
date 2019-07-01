
" Plugins
" i use vim-plug

call plug#begin('~/.local/share/nvim/plugged')

"light-line a really nice airline plugin that is lightweight
Plug 'itchyny/lightline.vim'

" fzf, fuzzy finder really good for traversing seperate files and stuff like
" that, still have CtrlP with me for whenever fzf f*cks up with me
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all' }
Plug 'junegunn/fzf.vim'

" Vim multiple cursors, just a must have, its' the feature that i love sublime
" for and finding it in Vim is so good
Plug 'terryma/vim-multiple-cursors'

" Git gutter, you better know what it does
Plug 'airblade/vim-gitgutter'

" NERD commenter, really helps with commenting for almost all languages i use
Plug 'scrooloose/nerdcommenter'

" Another plugin from scrool, NERDtree, provides really nice IDE like file
" exploring
Plug 'scrooloose/nerdtree'

" Coc.nvim a great plugin for linting, code completion, and everything in
" between
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Better tabbing
Plug 'ervandew/supertab'

" Auto pairs, vim plugin for auto parenthesis, brackets, quotes, whatever
" completion, like with other text editors and ides this is essential
Plug 'jiangmiao/auto-pairs'

" vim-surround, provides easy to use surrounding, changing deleting, adding
" surroundings in pairs
Plug 'tpope/vim-surround'

" Vim substitue, for subsituting strings, and other things, easy to use, has
" special mappings
Plug 'aklt/vim-substitute'

" Syntax highlighting for the shell i use, FISH
Plug 'https://github.com/dag/vim-fish.git'

" C language support (enhanced)
Plug 'https://github.com/vim-scripts/c.vim.git'

" VimCompletesMe tab autocomplete
Plug 'https://github.com/ajh17/VimCompletesMe.git'

" VIM2HS vim plugin for Haskell syntax and linting
Plug 'dag/vim2hs'

" Standared key bidnings
Plug 'tpope/vim-unimpaired'

" Standared defaults that everybody needs
Plug 'tpope/vim-sensible'

"Syntastic syntax checking
Plug 'scrooloose/syntastic'

call plug#end()

" Configuartion For vim
filetype on
filetype plugin on
filetype indent on

set autoread

set nocompatible

set noshowmode

set encoding=utf-8
set fileencoding=utf-8

set nobackup
set writebackup
set noswapfile

"Reminder to keep my lines no more than 110 chars
set colorcolumn=110
highlight ColorColumn ctermbg=red
"Show line numbers
set number

syntax enable

set background=dark

" Key stroke mappings
nmap <C-S> :w <Enter>
imap <C-S> <Esc> :w <Enter>

imap <C-Z> <Esc> :undo <Enter>

" syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
