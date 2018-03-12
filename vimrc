" Vundle configuration ------------------------- {{{
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$USERPROFILE/vimfiles/bundle/')

Plugin 'VundleVim/Vundle.vim'         "Vundle
Plugin 'flazz/vim-colorschemes'       "colorschemes
Plugin 'yggdroot/indentline'          "indentations
Plugin 'tpope/vim-surround'           "surrounding
Plugin 'tommcdo/vim-lion'             "alignement
Plugin 'tpope/vim-speeddating'        "manipulations de dates

Plugin 'scrooloose/nerdtree'          "The NERD Tree
Plugin 'terryma/vim-multiple-cursors' "Multiple cursors

Plugin 'evidens/vim-twig'             "Twig syntax colors
Plugin 'digitaltoad/vim-pug'          "Pug syntax colors
Plugin 'kchmck/vim-coffee-script'     "CoffeeScript sybtax & Cie
Plugin 'posva/vim-vue'                "Vue files syntax colors

Plugin 'vim-scripts/npm'               "NPM cli tool
Plugin 'roxma/vim-encode'              "encode strings

" Plugin 'marijnh/tern_for_vim' "TernJS (autocompletion JS)
" Plugin 'lukaszkorecki/workflowish'

" Plugin 'Valloric/YouCompleteMe'
" Plugin 'pangloss/vim-javascript' 

" Plugin 'qbbr/vim-symfony'
Plugin 'tpope/vim-fugitive' "git wrapper
" Plugin 'KabbAmine/gulp-vim' "gulp wrapper

call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" }}}

" Global personnal configuration --------------------------- {{{
set ai nu ts=4 sw=4 expandtab noswapfile nocompatible modeline modelines=5
syntax on
colorscheme solarized

set fileencodings=utf-8
set fileencoding=utf-8

inoremap jk <esc>
inoremap <c-space> <c-n>
nnoremap <c-s> :setl hls!<CR>

function! ActiviteSemaine()
    tabnew $home/documents/activite\ semaine.txt
    normal G$
    " startinsert
endfunction

function! TODO()
    tabnew $home/documents/Todo.txt
    normal G$
    " startinsert
endfunction

command! -n=0 ActiviteSemaine call ActiviteSemaine()
command! -n=0 TODO call TODO()
command! -n=0 PointSemaine :!start C:\Users\user\vimfiles\bin\pointSemaine.bat
command! -n=0 NewSemaine :normal Ilundi jkYp<C-A>p2<C-A>p3<C-A>p4<C-A>

cd $HOME

" }}}
