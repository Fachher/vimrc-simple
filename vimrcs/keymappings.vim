"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>

nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <F7> :w<CR>:make<CR>:!./%:r<CR>
nnoremap <F10> :confirm qa<CR>
vnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
nnoremap <leader>y "+y
nnoremap <leader>yy "+yy
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
map <leader>b :CtrlPBuffer<cr>
nmap <leader>w :w!<cr>
nmap <leader>r :%s//g<left><left>
vmap <leader>r :s//g<left><left>
nnoremap <leader>q :copen<CR>
nmap <leader>f :Ag! ""<left>
map <silent> <leader><cr> :noh<cr>
nnoremap <silent> <Esc><Esc> :close<CR> 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map <M-.> :vsplit<cr>
map <space> <C-f>
map <f12> :qall!<cr>
map ff :NERDTreeFind<cr>
"map <space> :
"nmap <leader>m :w!<cr>:make<cr>
nmap <leader>m :make<cr>
nmap <leader>s /^\s*
imap <f10> <c-x><c-f>
vmap <enter> :s/\s/\r/g<cr>:noh<cr>
nmap <leader>e :! ./%<cr>

"============== Plugin configuration =============
map <leader>nn :NERDTreeToggle<CR>
nnoremap ,c :call NERDComment(0,"toggle")<CR>
vnoremap ,c :call NERDComment(0,"toggle")<CR>
nnoremap <leader>h :CtrlPMRU <CR>
nmap <F8> :TagbarToggle<CR>
nmap <leader>1 :NERDTreeFocus<CR>
nmap <leader><esc> <C-w>w

" Like gJ, but always remove spaces
fun! JoinSpaceless()
    execute 'normal gJ'

    " Character under cursor is whitespace?
    if matchstr(getline('.'), '\%' . col('.') . 'c.') =~ '\s'
        " When remove it!
        execute 'normal dw'
    endif
endfun

" Map it to a key
nnoremap <Leader>J :call JoinSpaceless()<CR>

" Override w motion
function! MyWMotion()
    " Save the initial position
    let initialLine=line('.')

    " Execute the builtin word motion and get the new position
    normal! W
    let newLine=line('.')

    " If the line as changed go back to the previous line
    if initialLine != newLine
        normal k$
    endif
endfunction

nnoremap <silent> W :call MyWMotion()<CR>


command! -nargs=0 UpsideDown execute 'g/^/m0'

" map makro key to +
nnoremap + @
