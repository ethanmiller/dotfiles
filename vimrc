" see https://github.com/gmarik/vundle

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-surround'
Bundle 'wincent/Command-T'
Bundle 'mitechie/pyflakes-pathogen'
Bundle 'mileszs/ack.vim'
" vim-scripts repos
Bundle 'python.vim'
Bundle 'pep8'
Bundle 'The-NERD-tree'
" non github repos
"
" ...

filetype plugin indent on     " required!

:set t_Co=256
:syntax on
:colorscheme desert
:set hlsearch
:let mapleader = " "
:nmap <Leader>p oimport pdb;pdb.set_trace()<Esc>
:nmap <Leader>n :NERDTreeToggle<CR>
:nmap <leader>vh   :leftabove  vert sbn<CR>
:nmap <leader>vl  :rightbelow vert sbn<CR>

:set directory=~/.vim/tmp " swap files
:set hidden " change buffers without saving
:set ruler
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set laststatus=2
":set statusline=%f%m%r%h%w\ [TYPE=%Y]\ %{TagInStatusLine()}\ [POS=%04l,%04v][%p%%]
:set statusline=%f%m%r%h%w\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]
match Todo /\s\+$/
au BufRead,BufNewFile *.pp   setfiletype puppet
au BufRead,BufNewFile *.pde setf processing
