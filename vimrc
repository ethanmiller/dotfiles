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
" Bundle 'mitechie/pyflakes-pathogen'
" Bundle 'nvie/vim-flake8' "???
Bundle 'rodjek/vim-puppet'
Bundle 'scrooloose/nerdcommenter'
Bundle 'maxbrunsfeld/vim-yankstack'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'scrooloose/syntastic'
"Bundle 'Bogdanp/pyrepl.vim'
Bundle 'ethanmiller/Conque-Shell'
" Bundle 'klen/python-mode' " this one is a mess had to disable everything
" Bundle 'godlygeek/tabular' " vim-puppet asked for this one... but not useful
"
" vim-scripts repos (github https://github.com/vim-scripts/)
" Python class/method/def in statusbar
" Bundle 'pythonhelper'
" extend % for HTML, XML, others
Bundle 'matchit.zip'
" Bundle 'pep8'
" Bundle 'The-NERD-tree'
" non github repos
"
" ...

filetype plugin indent on     " required!

:set t_Co=256
:syntax on
:colorscheme distinguished
:set hlsearch
:set rnu
:let mapleader = " "
:nmap <Leader>p <Plug>yankstack_substitute_older_paste
:nmap <leader>vh :leftabove vert sbn<CR>
:nmap <leader>vl :rightbelow vert sbn<CR>
:nmap <silent><Leader>/ :nohls<CR>
:nmap n nzz
" :let g:pep8_map='<leader>8'
" let g:ConqueTerm_SendVisKey = '<leader>c'

:hi clear SpellBad
:hi SpellBad cterm=underline,bold ctermfg=red

command Pyshell :set nolist | ConqueTermVSplit bpython

:set directory=~/.vim/tmp " swap files
:set hidden " change buffers without saving
:set ruler
:set smartindent
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set expandtab
:set laststatus=2
:set statusline=%f%m%r%h%w\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]
match Todo /\s\+$/
au BufRead,BufNewFile *.pde setf processing
au BufRead,BufNewFile *.py setlocal textwidth=79
au BufRead,BufNewFile *.py setlocal smarttab
au BufWinLeave *.* mkview
au BufWinEnter *.* silent loadview
" turns off broken => indenting from vim-puppet
au FileType puppet iunmap <buffer> <silent> >
:set colorcolumn=80
