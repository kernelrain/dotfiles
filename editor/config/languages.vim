"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Jedi configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jedi#usages_command = "<leader>u"
let g:jedi#use_splits_not_buffers = "right"
let g:jedi#popup_select_first = 0
let g:jedi#popup_on_dot = 0
let g:jedi#smart_auto_mappings = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>bp Oimport ipdb; ipdb.set_trace()<ESC><ESC>j

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Java
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>jc :!javac %<CR>
nnoremap <leader>jj :!java %:r<CR>
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fortran
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rust
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rustfmt_autosave = 1
