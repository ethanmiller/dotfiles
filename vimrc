" see https://github.com/gmarik/vundle
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
" My Bundles here:
"
" original repos on github
Bundle 'wincent/Command-T'
" cd ~/.vim/bundle/Command-T/ruby/command-t/; ruby extconf.rb; make
Bundle 'mitechie/pyflakes-pathogen'
Bundle 'rodjek/vim-puppet'
Bundle 'sophacles/vim-processing'
Bundle 'scrooloose/nerdcommenter'
" vim-scripts repos (github https://github.com/vim-scripts/)
" Python class/method/def in statusbar
Bundle 'pythonhelper'
" extend % for HTML, XML, others
Bundle 'matchit.zip'
Bundle 'pep8'
" Bundle 'The-NERD-tree'
Bundle 'YankRing.vim'
" non github repos
"
" ...

filetype plugin indent on     " required!

:set t_Co=256
:syntax on
:colorscheme desert
:set hlsearch
:set rnu
:let mapleader = " "
:nmap <Leader>p oimport pdb;pdb.set_trace()<Esc>
:nmap <leader>vh :leftabove vert sbn<CR>
:nmap <leader>vl :rightbelow vert sbn<CR>
:nnoremap <leader>cl :NERDComInsertComment<CR>
:nnoremap <leader>cc :NERDComAlignedComment<CR>
:nmap <silent><Leader>/ :nohls<CR>
:nnoremap n nzz
:let g:pep8_map='<leader>8'

:hi clear SpellBad
:hi SpellBad cterm=underline,bold ctermfg=red

:set directory=~/.vim/tmp " swap files
:set hidden " change buffers without saving
:set ruler
:set smartindent
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set expandtab
:set laststatus=2
:set statusline=%f%m%r%h%w\ [TYPE=%Y]\ %{TagInStatusLine()}\ [POS=%04l,%04v][%p%%]
match Todo /\s\+$/
au BufRead,BufNewFile *.pde setf processing
au BufRead,BufNewFile *.py setlocal textwidth=79
au BufRead,BufNewFile *.py setlocal smarttab
au BufWinLeave *.* mkview
au BufWinEnter *.* silent loadview
