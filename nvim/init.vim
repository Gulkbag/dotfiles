" File              : init.vim
" Author            : Ahmed Nasser <ahmednasser@gmail.com>
" Date              : 13.07.2019
" Last Modified Date: 07.08.2019
" Last Modified By  : Ahmed Nasser <ahmednasser@gmail.com>
" File              : init.vim
" Date              : 12.07.2019
" Last Modified Date: 12.07.2019

" Very Important: Fish shell (which i use) isn't compatible with alot of vim
" plugins and vim itself so i set it to use bash instead
set shell=/bin/bash

" Plugins
" i use vim-plug

call plug#begin('~/.local/share/nvim/plugged')

" Custom start screens
Plug 'mhinz/vim-startify'

" File type icons for NERDtree and the other stuff
Plug 'ryanoasis/vim-devicons'

" fzf, fuzzy finder really good for traversing seperate files and stuff like
" that, still have CtrlP with me for whenever fzf f*cks up with me
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all' }
Plug 'junegunn/fzf.vim'

" Vim multiple cursors, just a must have, its' the feature that i love sublime
" for and finding it in Vim is so good
Plug 'terryma/vim-multiple-cursors'

" Git gutter, you better know what it does
Plug 'airblade/vim-gitgutter'

" Fugitive Git stuff
Plug 'tpope/vim-fugitive'

" NERD commenter, really helps with commenting for almost all languages i use
Plug 'scrooloose/nerdcommenter'

" Another plugin from scrool, NERDtree, provides really nice IDE like file
" exploring
Plug 'scrooloose/nerdtree'

" Coc.nvim a great plugin for linting, code completion, and everything in
" between
Plug 'neoclide/coc.nvim', {'branch': 'master'}

" Better tabbing
Plug 'ervandew/supertab'

" Rainbows
Plug 'oblitum/rainbow'

" Auto pairs, vim plugin for auto parenthesis, brackets, quotes, whatever
" completion, like with other text editors and ides this is essential
Plug 'jiangmiao/auto-pairs'

" vim-surround, provides easy to use surrounding, changing deleting, adding
" surroundings in pairs
Plug 'tpope/vim-surround'

" Vim substitue, for subsituting strings, and other things, easy to use, has
" special mappings
Plug 'aklt/vim-substitute'

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

" Fish plugin (the shell i use)
Plug 'dag/vim-fish'

"Syntastic syntax checking
Plug 'scrooloose/syntastic'

" Haskell plugins
Plug 'alx741/vim-stylishask'
Plug 'neovimhaskell/haskell-vim'

" I mean come on you probably already expected this (truly sexy)
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
Plug 'dylanaraps/wal.vim'
Plug 'ajh17/spacegray.vim'

" Plugin adds automatic headers
Plug 'alpertuna/vim-header'

" Plugin for organizing and formatting ASCII tables (like org-mode for emacs)
Plug 'dhruvasagar/vim-table-mode'

" Better intergation with Unix
Plug 'tpope/vim-eunuch'

" Comment stuff out
Plug 'tpope/vim-commentary'

" You guys are modern and use clang format
" i am savage and use GNU INDENT (for C only because it's the language of gods)
Plug 'crosbymichael/vim-cfmt'

" Jumpto Defention
Plug 'c-brenn/phoenix.vim'
Plug 'tpope/vim-projectionist' " required for some navigation features

" For typescript
Plug 'leafgarland/typescript-vim'

" Clojure/Lisp stuff, Fireplace is for REPL intergation 
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-clojure-highlight'

call plug#end()

" Configuartion For vim
filetype on
filetype plugin indent on

set autoread

set nocompatible

set noshowmode

set encoding=utf-8
set fileencoding=utf-8

let g:rainbow_active = 1

set nobackup
set writebackup
set noswapfile

set hlsearch
set incsearch
set ignorecase
set smartcase
map <CR> :noh<CR>

"Reminder to keep my lines no more than 110 chars
set colorcolumn=110
highlight ColorColumn ctermbg=006
"Show line numbers
set number

" Tab/indent stuff
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2

" Leader
let g:mapleader=' '

syntax enable
set termguicolors
" colorscheme spacegray
colorscheme spacegray

" gruvbox config
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_improved_strings = 1

" spacegray config
let g:spacegray_underline_search = 1
let g:spacegray_use_italics = 1
let g:spacegray_low_contrast = 1

" Key stroke mappings
nmap <C-S> :w <Enter>
imap <C-S> <Esc> :w <Enter>

imap <C-Z> <Esc> :undo <Enter>

" Header file config
let g:header_field_author = 'Ahmed Nasser'
let g:header_field_author_email = 'ahmednasser@gmail.com'
map <F4> :AddHeader<CR>

" Dynamically getting the fg/bg colors from the current colorscheme, returns hex which is enough for me to use in Neovim
" Needs to figure out how to return cterm values too
let fgcolor=synIDattr(synIDtrans(hlID("Normal")), "fg", "gui")
let bgcolor=synIDattr(synIDtrans(hlID("Normal")), "bg", "gui")

" Tabline/Buffer line
set showtabline=2
set tabline="%1T"
" reverse hybrid tabline colors
if g:colors_name == 'hybrid'
  highlight TabLineFill cterm=none gui=none
  highlight TabLine cterm=none gui=none
  " This doesn't work, odd!
  " highlight TabLineSel ctermfg=black ctermfg=white guibg=fgcolor guifg=bgcolor
  highlight TabLineSel ctermfg=black ctermfg=white guibg=#c5c8c6 guifg=#1d1f21
  highlight BufTabLineActive cterm=none gui=none
endif

" C formmatter options
autocmd BufWritePre *.c,*.h Cfmt
let g:cfmt_style = '-kr'

" My Own StatusLine, Just done with the help of stackoverflow and fucking with
" the terminal

let g:currentmode={
      \ 'n'  : 'N ',
      \ 'no' : 'N·Operator Pending ',
      \ 'v'  : 'V ',
      \ 'V'  : 'V·Line ',
      \ '^V' : 'V·Block ',
      \ 's'  : 'Select ',
      \ 'S'  : 'S·Line ',
      \ '^S' : 'S·Block ',
      \ 'i'  : 'I ',
      \ 'R'  : 'R ',
      \ 'Rv' : 'V·Replace ',
      \ 'c'  : 'Command ',
      \ 'cv' : 'Vim Ex ',
      \ 'ce' : 'Ex ',
      \ 'r'  : 'Prompt ',
      \ 'rm' : 'More ',
      \ 'r?' : 'Confirm ',
      \ '!'  : 'Shell ',
      \ 't'  : 'Terminal '
      \}


highlight User1 cterm=None gui=None ctermfg=007 guifg=fgcolor
highlight User2 cterm=None gui=None ctermfg=008 guifg=bgcolor
highlight User3 cterm=None gui=None ctermfg=008 guifg=bgcolor
highlight User4 cterm=None gui=None ctermfg=008 guifg=bgcolor
highlight User5 cterm=None gui=None ctermfg=008 guifg=bgcolor
highlight User7 cterm=None gui=None ctermfg=008 guifg=bgcolor
highlight User8 cterm=None gui=None ctermfg=008 guifg=bgcolor
highlight User9 cterm=None gui=None ctermfg=007 guifg=fgcolor

" Automatically change the statusline color depending on mode
function! ChangeStatuslineColor()
  exe "hi! StatusLine guibg=a89984"
  if (mode() =~# '\v(n|no)')
    exe 'hi! StatusLine ctermfg=009 guifg=#d79921'
  elseif (mode() =~# '\v(v|V)' || g:currentmode[mode()] ==# 'V·Block' || get(g:currentmode, mode(), '') ==# 't')
    exe 'hi! StatusLine ctermfg=007 guifg=#458588'
  elseif (mode() ==# 'i')
    exe 'hi! StatusLine ctermfg=004 guifg=#b16286'
  else
    exe 'hi! StatusLine ctermfg=006 guifg=d65d0e'
  endif

  return ''
endfunction

" Find out current buffer's size and output it.
function! FileSize()
  let bytes = getfsize(expand('%:p'))
  if (bytes >= 1024)
    let kbytes = bytes / 1024
  endif
  if (exists('kbytes') && kbytes >= 1000)
    let mbytes = kbytes / 1000
  endif

  if bytes <= 0
    return '0'
  endif

  if (exists('mbytes'))
    return mbytes . 'MB '
  elseif (exists('kbytes'))
    return kbytes . 'KB '
  else
    return bytes . 'B '
  endif
endfunction

function! ReadOnly()
  if &readonly || !&modifiable
    return ''
  else
    return ''
endfunction

function! GitInfo()
  let git = fugitive#head()
  if git != ''
    return ' '.fugitive#head()
  else
    return ''
endfunction

" http://stackoverflow.com/a/10416234/213124
set laststatus=2
set statusline=
set statusline+=%{ChangeStatuslineColor()}               " Changing the statusline color
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}   " Current mode
set statusline+=%8*\ [%n]                                " buffernr
set statusline+=%8*\ %{GitInfo()}                        " Git Branch name
set statusline+=%8*\ %<%F\ %{ReadOnly()}\ %m\ %w\        " File+path
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}             " Syntastic errors
set statusline+=%*
set statusline+=%9*\ %=                                  " Space
set statusline+=%8*\ %y\                                 " FileType
set statusline+=%8*\ %-3(%{FileSize()}%)                 " File size
set statusline+=%0*\ %3p%%\ \ %l:\ %3c\                 " Rownumber/total (%)

" Simple thing for tmux to change cursor shape in modes
if exists('$TMUX')
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Autocmd
autocmd BufWritePost config.h,config.def.h !sudo make install
autocmd BufWritePost config-t2.ini,config.ini !scripts/type-switch.sh
