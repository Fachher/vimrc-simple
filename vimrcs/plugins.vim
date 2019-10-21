call plug#begin('~/.vim_runtime/plugged')
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } 
	Plug 'scrooloose/nerdcommenter'
	Plug 'kien/ctrlp.vim'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-fugitive'
	Plug 'majutsushi/tagbar'
	Plug 'rking/ag.vim'
	Plug 'Quramy/vim-js-pretty-template'
	Plug 'andreshazard/vim-logreview'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'MattesGroeger/vim-bookmarks'
	Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|bower_components$\|dist$\|node_modules$\|project_files$\|test$',
  \ }
let g:ctrlp_mruf_relative = 1
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
set omnifunc=syntaxcomplete#Complete
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_autofocus = 1
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave"]
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:deoplete#enable_at_startup = 1

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
color dracula

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1
