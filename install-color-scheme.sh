git clone https://github.com/tomasr/molokai
mv molokai/colors/molokai.vim ~/.vim/colors

echo "add keymaps and color schema"

echo 'noremap <C-e> <End>
inoremap <C-e> <End>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-e> <End>
noremap <C-a> <^>
set textwidth=80
set colorcolumn=+1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set clipboard+=unnamed

" add color schema
colorscheme molokai
syntax on
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark

function! StripTrailingWhitespaces()
let l = line(".")
let c = col(".")
%s/\s+$//e
call cursor(l, c)
endfunction
augroup AutoStripTrailingWhitespaces
autocmd!
autocmd BufWritePre * :call StripTrailingWhitespaces()
augroup END
' > ~/.vimrc.after

