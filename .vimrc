"Set Constants
set number
set autoindent
set ignorecase
set smartcase
set hlsearch
set incsearch
set history=512
set cmdheight=2  
set tabstop=4
set t_Co=256
set cursorline
set showtabline=2
set laststatus=2
set showtabline=2

" Find Plug Vim & install if failed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


call plug#begin()
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'tpope/vim-fugitive'
"Plug 'udalov/kotlin-vimPlug'
Plug 'ryanoasis/vim-devicons'
"Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline'
call plug#end()

"ALE
packloadall
silent! helptags ALL

"GitGutter
let g:gitgutter_terminal_reports_focus=0

"CoClinter
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"onehalf Theme
syntax on
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
let g:lightline = { 'colorscheme': 'onehalfdark'}
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"Rainbow Highlighting
let g:rainbow_active = 1

"nerdtree
set encoding=UTF-8
autocmd VimEnter * NERDTree | wincmd p " Start NERDTree when openning Vim
noremap <C-q> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <leader>q :NERDTreeFocus<CR>

"lightline
if !has('gui_running')
  set t_Co=256
endif
let g:lightline = { 'colorscheme': 'onehalfdark' }
let g:lightline.tabline = {
            \ 'left': [ [ 'tabs' ] ],
            \ 'right': [ [ 'bufnum'] ] }
let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = {'left': '', 'right': '' }

"airline
let g:airline#extensions#tabline#buffer_nr_show = 1

"Remapping Commands
nnoremap <C-z> :undo<CR>
nnoremap <C-Z> :undo<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-h> :tabprevious<CR>
nnoremap<C-l> :tabprevious<CR>
