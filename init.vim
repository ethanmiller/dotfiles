call plug#begin('~/.vim/plugged')
" original repos on github
"Plug 'kien/ctrlp.vim'
Plug 'puppetlabs/puppet-syntax-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdcommenter'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'Lokaltog/vim-distinguished'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
"Plug 'L2G/vim-syntax-terraform'
Plug 'hashivim/vim-terraform'
Plug 'mustache/vim-mustache-handlebars'
Plug 'Shougo/denite.nvim'
"Plug 'Shougo/neoyank.vim'
Plug 'Shougo/neomru.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
"
" Bundle 'matchit.zip'
"
call plug#end()

:syntax on
:let $NVIM_TUI_ENABLE_TRUE_COLOR=1
:let g:syntastic_javascript_checkers = ['eslint']
:let g:vim_markdown_folding_style_pythonic = 1
:colorscheme gruvbox
:set background=dark
:set rnu
:let mapleader = " "

function! NewNote()
    call inputsave()
    let nname = input('Name:')
    call inputrestore()
    execute 'e ~/Dropbox/notes/'.nname.'.md'
endfunction

":nmap <Leader>y :.!pbcopy&&pbpaste<CR>
:nmap <Leader>. :! echo % \| pbcopy<CR>
:nmap <Leader>f :Denite file_rec<CR>
:nmap <Leader>g :Denite grep<CR>
:nmap <Leader>m :Denite menu<CR>
:nmap <Leader>r :Denite file_mru<CR>
:nmap <Leader>b :Denite buffer<CR>
:nmap <Leader>y :! cat ~/.config/nvim/scratch \| pbcopy<CR>
:nmap <Leader>s :split ~/.config/nvim/scratch<CR>
:nmap <Leader>p <Plug>yankstack_substitute_older_paste
":nmap <Leader>t :CtrlP<CR>
":nmap <Leader>g :Ggrep 
:nmap <Leader>vh :leftabove vert sbn<CR>
:nmap <Leader>vl :rightbelow vert sbn<CR>
":nmap <Leader>cd :cd %:p:h<CR>:pwd<CR>
:vmap <Leader>cp "+y
:nmap <Leader>nf :Denite -path=~/Dropbox/notes file_rec<CR>
:nmap <Leader>ng :Denite -path=~/Dropbox/notes grep<CR>
:nmap <Leader>nn :call NewNote()<CR>
:nmap <silent><Leader>/ :nohls<CR>
:nmap <silent><Leader>d :set relativenumber!<CR>

if isdirectory(".git")
    "let g:ctrlp_user_command = 'cd %s && git ls-files . -co --exclude-standard'
    call denite#custom#var('file_rec', 'command', ['git', 'ls-files', '-co', '--exclude-standard'])
    call denite#custom#var('grep', 'command', ['git', '--no-pager', 'grep'])
    call denite#custom#var('grep', 'default_opts', ['-nH'])
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'final_opts', [])
    call denite#custom#var('grep', 'separator', [])
endif

call denite#custom#map('insert', "<C-j>", 'move_to_next_line')
call denite#custom#map('insert', "<C-k>", 'move_to_prev_line')

let s:menus = {}
let s:menus.edits = {'description': 'Common edit targets'}
let s:menus.edits.file_candidates = [
    \ ['nvim init.vim', '~/.config/nvim/init.vim'],
    \ ['bashrc', '~/.bashrc'],
    \ ['bash aliases', '~/.bash_aliases'],
    \ ['eb aliases', '~/.eb_aliases'],
    \ ['profile', '~/.profile'],
    \ ]
let s:menus.notes = {'descriptions': 'Note system'}
let s:menus.notes.command_candidates = [
    \ ['search', 'Denite -path=~/Dropbox/notes file_rec'],
    \ ['grep', 'exe "Denite -path=~/Dropbox/notes grep:" input("pattern: ")'],
    \ ['new', 'exe "e ~/Dropbox/notes/"input("name: ")".md"'],
    \]
let s:menus.bonk = {'description': 'BONK'}
let s:menus.bonk.command_candidates = [
    \ ['scratch', 'split ~/.config/nvim/scratch'],
    \ ]
call denite#custom#var('menu', 'menus', s:menus)

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
