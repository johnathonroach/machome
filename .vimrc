set nocompatible

so ~/.vim/plugins.vim

syntax enable
set backspace=indent,eol,start              "Make backspace behave like every other editor.
let mapleader = ',' 						"The default is \, but a comma is much better.
set number	

set noerrorbells visualbell t_vb=           "No damn error bells!
set spell                                   "turn on spellcheck

"-------------Visuals--------------"
colorscheme gruvbox
set background=dark
"hi Normal guibg=NONE ctermbg=NONE

"Airline
"let g:airline_theme='wombat'
"let g:airline_theme='minimalist'
"let g:airline_theme='molokai'
"let g:airline_theme='solarized'
let g:airline_theme='term'
"let g:airline_theme='luna'
"let g:airline_theme='zenburn'
"let g:airline_theme='tomorrow'

"------Powerline-Settings ------------"
"let g:Powerline_symbols = 'fancy'
"set nocompatible   " Disable vi-compatibility
"set laststatus=2   " Always show the statusline
"set encoding=utf-8 " Necessary to show 

"override split border colors
hi vertsplit guibg=background guifg=background

set t_CO=256								    "Use 256 colors. This is useful for Terminal Vim.
set guifont=Fira_Code:h15						"Set the default font family and size.
"set guifont=FuraCode\ NF:h15					"Set the default font family and size.
set linespace=15   						        "Macvim-specific line-height.

set guioptions-=l                              "Disable Gui scrollbars.
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=e							    "Disable Gui tabs

set cursorline

"------------Editor---------------"

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab



"-------------Search--------------"
set hlsearch								"Highlight all matched terms.
set incsearch								"Incrementally highlight, as we type.




"-------------Split Management--------------"
set splitbelow 								"Make splits default to below...
set splitright								"And to the right. This feels more natural.

"We'll set simpler mappings to switch between splits.
nmap <c-j> <C-W><C-J>
nmap <c-k> <C-W><C-K>
nmap <c-h> <C-W><C-H>
nmap <c-l> <C-W><C-L>




"-------------Mappings--------------"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle
nmap <Leader>. :NERDTreeToggle<cr>

"CtrlP
nmap <D-p> :CtrlP<cr>
nmap <D-r> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>

"Greplace.vim
set grepprg=ag                                                  "Use ag for search
let g:grep_cmd_opts = '--line-numbers --noheading'
nmap <Leader>f :Gsearch<cr>

"----------CtrlP-Customizations----------"


let g:ctrlp_custom_ignore = 'node_modules\|DS_STORE\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:20,results:20'


"--------NERDTree-Customizations---------"

let NERDTreeHijackNetrw = 0


"--RANDOM--"
highlight link htmlLink text

"-------------Airline--------------------"

"-------------Auto-Commands--------------"

"Automatically source the Vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
