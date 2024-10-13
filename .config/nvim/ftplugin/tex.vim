" this is vimscript because lua does not seem to work
let g:maplocalleader = ' '
let g:vimtex_view_method = 'skim'

" return focus to nvim when using inverse search
function! s:TexFocusVim() abort
  silent execute "!open -a iTerm"
  :normal zz
  redraw!
endfunction

augroup vimtex_event_focus
  au!
  au User VimtexEventViewReverse call s:TexFocusVim()
augroup END
