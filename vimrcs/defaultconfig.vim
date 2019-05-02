set autoread
set nowrap
set iskeyword+=-
set number
set tabstop=4
set shiftwidth=4
set lazyredraw
set ttyfast
set cursorline
set splitright
set splitbelow
set mouse=a
set wildignore+=*.o,*.bin,*.class,*.a,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store,node_modules/**
set exrc
set secure
set ignorecase
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list
let mapleader = ","
let g:mapleader = ","
syntax on
syntax enable
highlight Visual  guifg=#FFFFFF guibg=green gui=none
highlight Visual ctermfg=0 ctermbg=Yellow
highlight CursorLine cterm=None ctermbg=blue ctermfg=white guibg=darkred guifg=white

augroup fileFormating
	"autocmd FileType javascript setlocal equalprg=js-beautify -f %
	autocmd FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"
augroup END

augroup fileAssociation
	autocmd BufNewFile,BufRead Jenkinsfile set syntax=groovy
augroup END

autocmd BufNewFile,BufRead *.txt setlocal wrap

"Abbreviations
iabbrev <buffer> === ===========================================
