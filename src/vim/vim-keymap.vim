" Tabs
vnoremap <Tab> >
vnoremap <S-Tab> <

vmap <C-/> gc
nnoremap <C-b>  :tabprevious<CR>
inoremap <C-b>  <Esc>:tabprevious<CR>i
nnoremap <C-n>  :tabnext<CR>
inoremap <C-n>  <Esc>:tabnext<CR>i
nnoremap <C-t>  :tabnew<CR>
inoremap <C-t>  <Esc>:tabnew<CR>i
nnoremap <C-w>  :q<CR>
inoremap <C-w>  <Esc>:q<CR>

" Toggles
let mapleader = ','
nnoremap <Leader>p :set invpaste<CR>:set paste?<CR>
nnoremap <Leader>l :set invlist<CR>:set list?<CR>
nnoremap <Leader>n :set invnumber<CR>:set number?<CR>

" Toggle background transparency
:function ToggleTransparency()
  if g:colors_name == 'monokai'
    colorscheme Monokai-Transparent
    echo g:colors_name
  elseif g:colors_name == 'monokai-transparent'
    colorscheme Monokai
    echo g:colors_name
  endif
endfunction

nnoremap <leader>t :call ToggleTransparency()<CR>
nnoremap <leader>; q:

" Splitting Windows
nnoremap <Leader><Left>  :Vexplore  <CR>
nnoremap <Leader><Right> :Vexplore! <CR>
nnoremap <Leader><Up>    :Sexplore  <CR>
nnoremap <Leader><Down>  :Hexplore  <CR>

nnoremap <S-Tab> <C-w><C-w>

" Plugin options
if exists(':MultipleCursorFind')
  let g:multi_cursor_next_key='<C-d>'
  let g:multi_cursor_prev_key='<C-e>'
  let g:multi_cursor_skip_key='<C-D>'
  let g:multi_cursor_quit_key='<Esc>'
endif
