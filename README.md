VimFiles
===

This is my VIM configuration, it uses [Vundle](https://github.com/VundleVim/Vundle.vim) to manage plugins, NERDTree, YouCompleteMe, Syntastic, UltiSnips and other fancy plugins.

## Table of contents

 - [Required Tools](#required-tools)
 - [Installation](#installaiton)
 - [Global Settings](global-settings)
 - [Vim Modules](#vim-modules)
 - [Mappings](#mappings)
 - [Links](#links)

## Required Tools

To use this configration you will need to install [nodeJS](https://nodejs.org/) and [Yarn](https://yarnpkg.com/).

## Installation

1) Clone this repository into your vim confuguration folder (`~/.vim` for linux, `$HOME/vimfiles` for windows).
    - Linux: `git clone https://github.com/chocolord/vimfiles ~/.vim`
    - Windows: `git clone https://github.com/chocolord/vimfiles $HOME/vimfiles`

2) Set the correct configuration according to the platform into the vimrc file:
    - Linux: uncomment lines 6 & 7
    - Windows: uncomment lines 10 & 11

3) Install [VundleVim](https://github.com/VundleVim/Vundle.vim):
    - Linux: `git clone https://github.com/VundleVime/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
    - Windows: `git clone https://github.com/VundleVime/Vundle.vim.git $HOME/vimfiles/bundle/Vundle.vim`

4) Install Vundle plugins, you need to start vim and run the `:PluginInstall` command

5) Compile YouCompleteMe - [YouCompleteMe documentation](https://github.com/ycm-core/YouCompleteMe)

6) Install the node modules needed with the `install-node-modules.sh` script.

## Global Settings

| Setting  | Description |
| --- |--- |
| ai | auto indent
| nu | line numbers |
| sw=4 | shiftwidth set to 4 |
| ts=4 | tabstop set to 4 |
| et | expandtab |
| noswapfile | disable the swap file |
| nocompatible | Disable Vi compatibilities |
| syntax | enables the coloration of the syntax |
| colorscheme | sets the colors of the editor |
| fileencoding(s) | sets the encoding of the file |

## Vim Modules

| Module | description |documenttion |
| --- | --- |--- |
| indentline | shows the indentation | https://github.com/yggdroot/indentline |
| nerdtree | file system explorer | https://github.com/scrooloose/nerdtree |
| syntastic | syntax checker | https://github.com/vim-syntastic/syntastic |
| ultisnips | snippets engine | https://github.com/SirVer/ultisnips |
| vim-colorschemes | colorshemes collection | https://github.com/flazz/vim-colorschemes |
| vim-encode | strings encoder | https://github.com/roxma/vim-encode |
| vim-fugitive | Git plugin | https://github.com/tpope/vim-fugitive |
| vim-instant-markdown | markdown viewer | https://github.com/suan/vim-instant-markdown |
| vim-lion | alignment tool | https://github.com/tommcdo/vim-lion |
| vim-multiple-cursors | multiple cursor edition | https://github.com/terryma/vim-multiple-cursors |
| vim-snippets | snippet collection | https://github.com/honza/vim-snippets |
| vim-speeddating | date formatting tool | https://github.com/tpope/vim-speeddating |
| vim-surround | text surrounding tool | https://github.com/tpope/vim-surround |
| vim-twig | twig plugin | https://github.com/evidens/vim-twig |
| vim-vue | VueJS component file syntax | https://github.com/posva/vim-vue |
| Vundle.vim | vim plugin manager  | https://github.com/VundleVim/Vundle.vim |
| YouCompleteMe | autocompletion tool | https://github.com/ycm-core/YouCompleteMe |

## Mappings

The mappings are declared in the `vimrc` file at the line 60.

**Leader key:** `-` 

| Mode | Mapping | Acions | Description | 
| --- | --- | --- |--- |
| INSERT | `jk` | `<esc>` | quit INSERT mode easily |
| NORMAL | `Ctrl+j` | `20j` | Scroll 20 lines down |
| NORMAL | `Ctrl+k` | `20k` | Scroll 20 lines up |
| INSERT | `Ctrl+<space>` | `Ctrl+n` | Browse autocompletion suggestions |
| NORMAL | `<leader>+s` | `:set hls!<CR>` | Enable/Disable search results highlighting |
| NORMAL | `<leader>+f` | `zf%` | Set a fold on the block (ex: fold a function) |
| NORMAL | `nt` | `:NERDTREEToogle<CR>` | Toggle the NERDTree pannel |

## Links
  - Learn how to use Vim: [Learn Vimscript the Hard Way](http://learnvimscriptthehardway.stevelosh.com/)
  - Find packages: [vimawesome](http://vimawesome.com/)
  - Find your color sheme: [vim colors](http://vimcolors.com/)
