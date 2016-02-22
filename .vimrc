" Example .vimrc

" -----------------------------------------------------------------
" VIM-PLUG {{{
" -----------------------------------------------------------------

" download vim-plug if missing
if empty(glob("~/.vim/autoload/plug.vim"))
  silent! execute '!curl --create-dirs -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
endif

" declare plugins
silent! if plug#begin()

  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'junegunn/vim-easy-align'
  Plug 'thelocehiliosan/vim-byrne'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'

  " ignore these on older versions of vim
  if v:version >= 703
    Plug 'jamessan/vim-gnupg'
  endif
  if v:version >= 704
    Plug 'vim-pandoc/vim-pandoc-syntax'
  endif

  call plug#end()
endif

" }}}
" -----------------------------------------------------------------
" BASIC SETTINGS {{{
" -----------------------------------------------------------------

" enable syntax highlighting (where applicable)
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" color scheme
set background=dark
set t_Co=256
silent! colorscheme byrne

" tabstop=2 master-race unite!
set tabstop=2
set shiftwidth=2

" indentation
set autoindent
set shiftround

" use spaces instead of tabs
set expandtab

" only one space after sentences (i am reformed)
set nojoinspaces

" vertically split to the right 
set splitright

" give vim a good memory
set history=500

" ensure we process modelines
set modelines=5

" utf-8—like a sane person
set encoding=utf-8

" add `kspell` to completion (use dictionary only when spelling is enabled)
set complete=.,w,b,u,t,kspell

" wildmode similar to bash
set wildmode=longest,list

" allow block selection to go outside of the actual text
set virtualedit=block

" remove the standard Vim :intro message
set shortmess+=I

" }}}
" -----------------------------------------------------------------
" MAPPINGS {{{
" -----------------------------------------------------------------

" quick fold toggling
nnoremap <tab> za

" make ^p/^n work like arrow keys in command mode
cnoremap <c-p> <up>
cnoremap <c-n> <down>

" }}}
" -----------------------------------------------------------------
" AUTOCMD {{{
" -----------------------------------------------------------------

" preserve <tab> in makefiles
autocmd FileType make set noexpandtab

" enforce formatting/spelling for git commit messages
autocmd FileType gitcommit set tw=72 lbr spell

" }}}
" -----------------------------------------------------------------
" ABBREVIATIONS {{{
" -----------------------------------------------------------------

inoreabbrev lod ಠ_ಠ
inoreabbrev sadface ʘ︵ʘ

" }}}
" -----------------------------------------------------------------
" MODELINES {{{
" -----------------------------------------------------------------

" vim: set foldmethod=marker :

" }}}

