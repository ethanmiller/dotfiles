" see https://github.com/gmarik/vundle 
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/vundle.git/
call vundle#rc()

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-surround'
" cd ~/.vim/bundle/Command-T/ruby/command-t/; ruby extconf.rb; make
Bundle 'wincent/Command-T'
Bundle 'mitechie/pyflakes-pathogen'
" port install p5-app-ack
Bundle 'mileszs/ack.vim'
" vim-scripts repos
Bundle 'python.vim'
Bundle 'pythonhelper'
Bundle 'Puppet-Syntax-Highlighting'
Bundle 'matchit.zip'
" pip install pep8
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
:nmap <leader>a <Esc>:Ack!
:nmap <leader>c :!echo "$(pwd)/%" \| pbcopy<CR>
:nmap <leader>er :!open "https://repos.energy-solution.net/projects/er/browser/trunk/%"
:nmap <leader>sg :!open "https://repos.energy-solution.net/projects/sgip/browser/trunk/%"
:let g:pep8_map='<leader>8'

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
au BufRead,BufNewFile *.pp setfiletype puppet
au BufRead,BufNewFile *.pde setf processing
au BufRead,BufNewFile *.py setlocal textwidth=79
au BufRead,BufNewFile *.py setlocal smarttab
