" Author    : Clement "DraZoro" Mahlangu
" Date	    : 11 June 2016
" Email     : clement.mahlangu@gmail.com
set nocompatible

call plug#begin('~/.config/nvim/autoload')

Plug 'Rykka/riv.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'airblade/vim-gitgutter'
Plug 'ekalinin/Dockerfile.vim'
Plug 'junegunn/vim-easy-align'
Plug 'lervag/vimtex'
Plug 'scrooloose/syntastic'
" Plug 'tomasr/molokai'
Plug 'Donearm/Ubaryd'
Plug 'sjl/gundo.vim'
Plug 'ternjs/tern_for_vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-flagship'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'
Plug 'jiangmiao/auto-pairs'
" Work with trailing white space
Plug 'bronson/vim-trailing-whitespace'

call plug#end()

" filetype plugin indent on
filetype plugin on

" Modeline for python
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

" Some colourful things here "
set t_Co=256
syntax on
set background=dark
" colorscheme molokai
colorscheme ubaryd


" Allow auto indentation
set autoindent

" Keeping track of location
set cursorline
set cursorcolumn

" Ignore case when searching"
set ignorecase

" Reduce shiftwidth
set shiftwidth=2

" Highlight the searched item
set hlsearch

" Show location of cursor
set ruler

"s All numbers are decimal system.
set nrformats=

" Spelling settings
" set spell
set spelllang=en
set spellsuggest=5

" Increased search history
set history=100

" Show numbers
set relativenumber
set number

" Matching brackets
set showmatch

" Make tab to cover four characters of space
set softtabstop=2

" Set grep to always generate a file-name "
set grepprg=grep\ -nH\ $*

" Settings for vim-flagship
set laststatus=2
set showtabline=2
set guioptions-=e


" Some short cut keys "
nmap <silent> <F4> :GundoToggle<CR>

" Shortcuts for moving between tabs
" Alet-j to move to the tab to the left
nmap <A-j> gT
" Alt-k to move to the tab to the right
nmap <A-k> gt

" Plugin configurations "
"

" Deoplete
let g:deoplete#enable_at_startup = 1

" Gundo "
let g:gundo_width = 40
let g:gundo_preview_height = 10
let g:gundo_right = 1

" Ultasnips "
let g:UltiSnipsEditSplit           = "vertical"
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file
let g:UltiSnipsUsePythonVersion    = 3
let g:UltiSnipsSnippetsDir         = "~/MySpace/snippets"

" Flagship "
" let g:tablabel = "%N%{flagship#tabmodified()} %{flagship#tabcwds('shorten',',')}"
" let g:tabprefix ='%{flagship#id()}'

" Syntastic "
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_rst_sphinx_source_dir = 'default'
let g:syntastic_rst_checkers = ['rstcheck']

" Unite
nnoremap <silent> <F3> :<C-u>Unite file<CR>

" Airline "
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 " Powerline fonts must be installed
