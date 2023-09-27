call plug#begin('~/.config/nvim/plugged')
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } 
	Plug 'scrooloose/nerdcommenter'
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'jiangmiao/auto-pairs'
	Plug 'kien/ctrlp.vim'
	Plug 'Valloric/YouCompleteMe', { 
				\ 'for': ['c', 'cpp', 'java', 'js', 'ts', 'sh', 'py'],
				\ 'do': 'bash install.py --clang-completer',
				\ }
	if has('macunix')
		Plug 'vim-airline/vim-airline'
	endif
	Plug 'tpope/vim-sensible'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-repeat'
	Plug 'rust-lang/rust.vim'
	Plug 'majutsushi/tagbar'
	Plug 'rking/ag.vim'
	Plug 'leafgarland/typescript-vim'
	Plug 'Quramy/vim-js-pretty-template'
	Plug 'andreshazard/vim-logreview'
	Plug 'rakr/vim-one'
	Plug 'vim-scripts/groovy.vim'
	Plug 'MattesGroeger/vim-bookmarks'
	Plug 'isRuslan/vim-es6'
	Plug 'udalov/kotlin-vim'
	Plug 'posva/vim-vue'
	Plug 'mattn/vim-xxdcursor'

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
let g:tagbar_ctags_bin = '/usr/local/Cellar/ctags/5.8_1/bin/ctags'
let g:tagbar_autofocus = 1
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave"]
let g:ycm_global_ycm_extra_conf = "~/.config/nvim/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_invoke_completion = '<C-Space>'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:deoplete#enable_at_startup = 1
color dracula
let g:airline_theme='dracula'

" Typscript plugin configuration
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
"autocmd FileType typescript JsPreTmpl html
"autocmd FileType typescript syn clear foldBraces

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1
