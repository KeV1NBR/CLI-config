set nocompatible              " be iMproved, required
filetype on                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'zxqfl/tabnine-vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'editorconfig/editorconfig-vim'
"Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'Chiel92/vim-autoformat'
Plugin 'APZelos/blamer.nvim'
Plugin 'voldikss/vim-floaterm'
Plugin 'majutsushi/tagbar'
Plugin 'frazrepo/vim-rainbow'

Plugin 'ryanoasis/vim-devicons'


Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'cdelledonne/vim-cmake'


if has('nvim')
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins'  }
else
    Plugin 'Shougo/defx.nvim'
    Plugin 'roxma/nvim-yarp'
    Plugin 'roxma/vim-hug-neovim-rpc'
    Plugin 'kristijanhusak/defx-icons'
endif

Plugin 'neoclide/coc.nvim'


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
" NERDTree setting defaults to work around http://github.com/scrooloose/nerdtree/issues/489

let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeGlyphReadOnly = "RO"

let g:blamer_enabled = 1
let g:rainbow_active = 1

let g:airline_theme='deus'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

nnoremap <silent> <F1> :NERDTree<CR>
nnoremap <silent> <F2> :Tagbar<CR>
nnoremap <silent> <F12> :CMakeGenerate<CR>

let g:autoformat_autoindent = 0
au BufNewFile,BufWrite * :Autoformat

let g:cmake_console_size = 5



call defx#custom#option('_', {
      \ 'winwidth': 30,
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'show_ignored_files': 0,
      \ 'buffer_name': '',
      \ 'toggle': 1,
      \ 'resume': 1
      \ })

let g:defx_icons_enable_syntax_highlight = 0

set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

syntax enable
colorscheme monokai

set nu
set cursorline
set tabstop=4
set shiftwidth=4

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Color configuration
"set bg=dark
"color evening  " Same as :colorscheme evening
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE


set term=screen-256color

"hi Normal  ctermfg=252 ctermbg=none

set ai
set tabstop=4
set shiftwidth=4
set mouse=a
set incsearch

