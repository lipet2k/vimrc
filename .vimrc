" Colors {{{
let g:gruvbox_contrast_dark  = 'hard'               " dark contrast mode
autocmd vimenter * ++nested colorscheme gruvbox     " awesome color scheme
syntax enable                                       " enable syntax processing
set bg=dark                                         " enable dark mode
" }}}
" Spaces & Tabs {{{
set tabstop=2           " number of visual spaces per TAB
set softtabstop=2       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set modelines=1
" }}}
" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]
" }}}
" Seaching {{{
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" }}}
" Line shortcuts {{{
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
" highlight last inserted text
nnoremap gV `[v`]
" }}}
" Leader Shortcuts {{{
let mapleader=","                   " leader is comma
nnoremap <leader>u :GundoToggle<CR> " toggle gundo
nnoremap <leader>s :mksession<CR>   " save session
" }}}
" Custom functions {{{
" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction
" }}}

" vim:foldmethod=marker:foldlevel=0
