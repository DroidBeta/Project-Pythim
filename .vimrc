
"vim-startify=========================================================================
let g:startify_custom_header = [
         \ '  mmmm                      "         #    mmmmm              m            ',
         \ '  #   "m   m mm    mmm    mmm      mmm#   #    #    mmm     mm#mm     mmm  ',
         \ '  #    #   #"  "  #" "#     #     #- -#   #mmmm"   ##  #      #      "   # ',
         \ '  #    #   #      #   #     #     #   #   #    #   #####      #      m"""# ',
         \ '  #mmm"    #      "#m#"   mm#mm   "#-##   #mmmm"   "#mm"      #mm    "mm"# ',
         \ ]

         
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"配置==========================================
set cmdheight=2
set nu
set  encoding=utf-8 
set langmenu=zh_CN.UTF-8
set ambiwidth=double 
syntax enable 
syntax on
set laststatus=2
set noundofile
set nobackup
set noswapfile
set tabstop=4   
set softtabstop=4 
set shiftwidth=4
set foldmethod=indent
set foldlevel=99
nnoremap <F8> za
"底栏=====================================================
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
 set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
 "airline options
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
nmap <Tab> :bn<cr>
let g:airline_highlighting_cache = 0
<
 "let g:airline_theme='molokai'
 "let g:airline_theme='wombat'
  let g:airline_theme='powerlineish'
  "let g:airline_theme='qwq'








"python ===================================================
filetype plugin on
let g:pydiction_location = '/home/w/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 3
"括号======================================================
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
"Neotree====================================================================
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <F3> :NERDTreeToggle<CR>

"colors============================================================================
"let g:molokai_original = 1
"let g:rehash256 = 1
"白天
"syntax enable
"set background=light
"colorscheme solarized
"夜间
syntax enable
set background=dark
"colorscheme solarized
colorscheme molokai




"插件================================================================
Plugin 'kien/ctrlp.vim'
Plugin 'maralla/completor.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'tell-k/vim-autopep8'
Plugin 'jiangmiao/auto-pairs'
Plugin 'rkulla/pydiction'
Plugin 'scrooloose/nerdtree'
Plugin 'mhinz/vim-startify'
Plugin 'vim-airline/vim-airline.git'
Plugin 'vim-airline/vim-airline-themes'



