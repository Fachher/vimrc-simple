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
set nolist
set hlsearch
filetype indent on
let mapleader = ","
let g:mapleader = ","
syntax on
syntax enable
hi Visual  guifg=#FFFFFF guibg=green gui=none
hi CursorLine cterm=None ctermbg=blue ctermfg=white guibg=darkred guifg=white
autocmd BufNewFile,BufRead Jenkinsfile set syntax=groovy
autocmd FileType javascript setlocal equalprg=js-beautify\ --stdin
autocmd FileType css setlocal equalprg=css-beautify
autocmd FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"
"autocmd InsertLeave * update
" for hex editing
augroup Binary
  au!
  au BufReadPre  *.bin let &bin=1
  au BufReadPost *.bin if &bin | %!xxd
  au BufReadPost *.bin set ft=xxd | endif
  au BufWritePre *.bin if &bin | %!xxd -r
  au BufWritePre *.bin endif
  au BufWritePost *.bin if &bin | %!xxd
  au BufWritePost *.bin set nomod | endif
augroup END

au BufNewFile,BufRead *.analyze set filetype=analyze_syntax
