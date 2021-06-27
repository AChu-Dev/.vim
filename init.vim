"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc

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

"sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


call plug#begin()
"Themes
Plug 'thedenisnikulin/vim-cyberpunk'
"Plug 'sonph/onehalf', {'rtp':'vim}
"Code Addons
Plug 'Shougo/deoplete.nvim', {'do':'UpdateRemotePlugins'}
Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
call plug#end()

let g:rainbow_active =1

set termguicolors
colorscheme cyberpunk
let g:airline_theme='cyberpunk'

"airline                                                                                  
let g:airline#extensions#tabline#buffer_nr_show = 1                                       

"remaps to controls
nnoremap <C-z> :undo<CR>                                                                  
nnoremap <C-Z> :undo<CR>                                                                  
nnoremap <C-Left> :tabprevious<CR>                                                        
nnoremap <C-Right> :tabnext<CR>                                                           
nnoremap <C-h> :tabprevious<CR>                                                           
nnoremap<C-l> :tabprevious<CR>
let g:user_emmet_leader_key=','     


"autocmd VimEnter * NERDTree | wincmd i
nnoremap <C-q> :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <leader>q :NERDTreeFocus<CR>
