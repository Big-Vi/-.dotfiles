set nocompatible
:set number
:set nu
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
set guifont=hack_nerd_font:h13
set foldmethod=marker
set splitbelow

filetype off                  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plugin 'https://github.com/preservim/nerdtree' " NerdTree
Plugin 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plugin 'https://github.com/vim-airline/vim-airline' " Status bar
Plugin 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plugin 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plugin 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plugin 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plugin 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plugin 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plugin 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plugin 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plugin 'https://github.com/kshenoy/vim-signature.git'
Plugin 'Chiel92/vim-autoformat'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

call vundle#end()            
filetype plugin indent on  
syntax enable  

noremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <C-o> :Buffers<CR>
nnoremap <silent> <C-f> :Rg! 
inoremap <C-f> <Esc><Esc>:BLines!<CR>


nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

:colorscheme jellybeans

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

:let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol='x'

" --- Just Some Notes ---
"  " :PlugClean :PlugInstall :UpdateRemotePlugins
"  "
"  " :CocInstall coc-python
"  " :CocInstall coc-clangd
"  " :CocInstall coc-snippets
"  " :CocCommand snippets.edit... FOR EACH FILE TYPE
"
"  " air-line
"  let g:airline_powerline_fonts = 1
"
"  if !exists('g:airline_symbols')
"      let g:airline_symbols = {}
"      endif
"
"      set encoding=utf8
"
"      " airline symbols
"      let g:airline_left_sep = ''
"      let g:airline_left_alt_sep = ''
"      let g:airline_right_sep = ''
"      let g:airline_right_alt_sep = ''
"      let g:airline_symbols.branch = ''
"      let g:airline_symbols.readonly = ''
"      let g:airline_symbols.linenr = ''
"
"      inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
