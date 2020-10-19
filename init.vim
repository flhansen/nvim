execute pathogen#infect()
syntax on
filetype plugin indent on

set relativenumber
set number        " show line numbers
set expandtab     " replace tabs with spaces
set tabstop=2     " make one tab be 2 spaces
set shiftwidth=2  " make one tab be 2 spaces

" ===== colorscheme
colorscheme onedark
let g:onedark_termcolors = 256

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif

  if (has("termguicolors"))
    set termguicolors
  endif
endif

" make the background transparent
hi Normal ctermbg=NONE guibg=NONE
hi NonText ctermbg=NONE guibg=NONE

" ===== vim-prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" ===== vim-airline
let g:airline_powerline_fonts = 1 " enable powerline fonts inside nvim

" ===== ctrlp.vim
let g:ctrlp_working_mode = 0
let g:ctrlp_map = '<C-f>'
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'venv\|node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
map <leader>j :CtrlP<cr>
map <C-b> :CtrlPBuffer<cr>

" ===== nerdtree
let g:NERDTreeWinPos = "left"
map <leader>nn :NERDTreeToggle<cr>

" ===== vimtex
let g:tex_flavor = 'latex'
let g:latex_view_general_viewer = 'zathura'
let g:vimtex_view_method = 'zathura'

" ===== coc.nvim
set updatetime=300
