" Vundle configuration ------------------------- {{{
set nocompatible              " be iMproved, required
filetype off                  " required

" Linux configuration
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" Windows configuration
" set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
" call vundle#begin('$USERPROFILE/vimfiles/bundle/')

Plugin 'VundleVim/Vundle.vim'         "Vundle
Plugin 'flazz/vim-colorschemes'       "colorschemes
Plugin 'yggdroot/indentline'          "indentations
Plugin 'tpope/vim-surround'           "surrounding
Plugin 'tommcdo/vim-lion'             "alignement
Plugin 'tpope/vim-speeddating'        "manipulations de dates

Plugin 'scrooloose/nerdtree'          "The NERD Tree
Plugin 'terryma/vim-multiple-cursors' "Multiple cursors

Plugin 'evidens/vim-twig'             "Twig syntax colors
Plugin 'posva/vim-vue'                "Vue files syntax colors

Plugin 'ycm-core/YouCompleteMe'       " Auto completion
Plugin 'vim-syntastic/syntastic'      " Syntax checking
Plugin 'SirVer/ultisnips'             " Snippet engine
Plugin 'honza/vim-snippets'           " Snippet collection 

Plugin 'roxma/vim-encode'              "encode strings

Plugin 'tpope/vim-fugitive' "git wrapper

Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}

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
" colorscheme solarized " Gvim on Windows
colorscheme solarized8_dark_low " vim in mate-terminal

set fileencodings=utf-8
set fileencoding=utf-8

inoremap jk <esc>
inoremap <c-space> <c-n>
nnoremap <c-s> :setl hls!<CR>
nnoremap <c-j> 20j
nnoremap <c-k> 20k
nnoremap nt :NERDTreeToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Configuraiton de syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntatsic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_javascript_eslint_args = '-c ~/.vim/eslintrc.js'
let g:syntatsic_vue_checkers = ['eslint']
let g:syntastic_vue_eslint_exec = 'eslint_d'
let g:syntastic_vue_eslint_args = '-c ~/.vim/eslintrc.js'
let g:syntastic_twig_twiglint_exec = 'twig-lint'
let g:syntastic_twig_twiglint_exe = 'twig-lint'

" Configuration de UltiSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="œœ"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Configuration de vim-instant-markdown
filetype plugin on
"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1
let g:instant_markdown_browser = "firefox --new-tab"

" }}}
