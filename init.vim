call plug#begin('~/.vim/plugged')
" original repos on github
Plug 'kien/ctrlp.vim'
Plug 'puppetlabs/puppet-syntax-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdcommenter'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'Lokaltog/vim-distinguished'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'L2G/vim-syntax-terraform'
Plug 'hashivim/vim-terraform'
Plug 'mustache/vim-mustache-handlebars'
"
" Bundle 'matchit.zip'
"
call plug#end()



:syntax on
:let $NVIM_TUI_ENABLE_TRUE_COLOR=1
:let g:syntastic_javascript_checkers = ['eslint']
:colorscheme gruvbox
:set background=dark

:set rnu
:let mapleader = " "
":nmap <Leader>y :.!pbcopy&&pbpaste<CR>
:nmap <Leader>f :! echo % \| pbcopy<CR>
:nmap <Leader>y :! cat ~/.config/nvim/scratch \| pbcopy<CR>
:nmap <Leader>s :split ~/.config/nvim/scratch<CR>
:nmap <Leader>p <Plug>yankstack_substitute_older_paste
:nmap <Leader>t :CtrlP<CR>
:nmap <Leader>vh :leftabove vert sbn<CR>
:nmap <Leader>vl :rightbelow vert sbn<CR>
:nmap <Leader>cd :cd %:p:h<CR>:pwd<CR>
:vmap <Leader>cp "+y
:nmap <silent><Leader>/ :nohls<CR>
:nmap <silent><Leader>n :set relativenumber!<CR>
if isdirectory(".git")
   let g:ctrlp_user_command = 'cd %s && git ls-files . -co --exclude-standard'
endif

:set directory=~/.config/nvim/tmp " swap files
:set smartindent
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set expandtab
:set statusline=%f%m%r%h%w\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]
" au BufRead,BufNewFile *.py setlocal textwidth=79
" au BufRead,BufNewFile *.py setlocal smarttab
autocmd QuickFixCmdPost *grep* cwindow
:set colorcolumn=80
" inoremap <Esc> <Nop>
