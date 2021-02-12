set nocompatible

so ~/.vim/plugins.vim

syntax enable
set backspace=indent,eol,start              "Make backspace behave like every other editor.
let mapleader = ',' 						"The default is \, but a comma is much better.
set number
set relativenumber

set noerrorbells visualbell t_vb=           "No damn error bells!
"set spell                                   "turn on spellcheck
autocmd FileType markdown setlocal spell
autocmd FileType text setlocal spell
"set colorcolumn=80

"-------------Visuals--------------"
let g:gitgutter_override_sign_column_highlight=1
colorscheme gruvbox
set background=dark
hi Normal guibg=NONE ctermbg=NONE
hi! link FoldColumn Normal
set foldcolumn=3

hi LineNr guibg=NONE guibg=NONE ctermfg=243 ctermbg=NONE
hi CursorLineNR cterm=bold guibg=NONE ctermbg=NONE
hi SignColumn ctermfg=none ctermbg=none
highlight clear SignColumn
" let g:gruvbox_invert_signs=0
hi CursorLine ctermbg=NONE


highlight VertSplit ctermbg=235
highlight VertSplit ctermfg=235
:set fillchars+=vert:│

highlight EndOfBuffer ctermbg=none ctermfg=237 guibg=NONE guifg=NONE

let g:NERTreeWinSize=60


"Airline
"let g:airline_theme='minimalist' " good for dark
let g:airline_theme='molokai'
" let g:airline_theme='solarized'
" let g:airline_theme='term'
" let g:airline_theme='luna'
" let g:airline_theme='zenburn'
" let g:airline_theme='tomorrow'
" let g:airline_theme='papercolor'
" let g:airline_theme='wombat'


let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
silent! call airline#extensions#whitespace#disable()

"-----Airline-Settings--------------"
let g:airline_left_sep=''
let g:airline_right_sep=''
"  let g:airline_detect_modified=1
"  let g:airline_detect_paste=1
"  let g:airline_detect_crypt=1
"  let g:airline_detect_spell=1
"  let g:airline_detect_spelllang=1
"  let g:airline_detect_iminsert=0
"  let g:airline_inactive_collapse=1
"  let g:airline_inactive_alt_sep=1

"------BufferLine-Settings------------"
"denotes whether bufferline should automatically echo to the command bar
let g:bufferline_echo = 0

"* the separator used on the left side of a buffer
"let g:bufferline_active_buffer_left = '['

"* the separator used on the right side of a buffer
"let g:bufferline_active_buffer_right = ']'

"* the symbol to denote that a buffer is modified
"let g:bufferline_modified = '+'

"* denotes whether buffer numbers should be displayed
let g:bufferline_show_bufnr = 1

"* denotes whether the bufferline should have rotation applied
" default, no rotate, no scrolling
"let g:bufferline_rotate = 0

" scrolling with fixed current buffer position
"let g:bufferline_rotate = 1

" scrolling without fixed current buffer position
"let g:bufferline_rotate = 2

"* only valid when `g:bufferline_rotate` is set to 1:
"let g:bufferline_fixed_index =  0 "always first
"let g:bufferline_fixed_index =  1 "always second (default)
"let g:bufferline_fixed_index = -1 "always last

"* denotes how to display the filename of a buffer (see |filename-modifiers| for more details)
"let g:bufferline_fname_mod = ':t'

"* denotes the highlight group for inactive buffers when used in the |statusline|
"let g:bufferline_inactive_highlight = 'StatusLineNC'

"* denotes the highlight group for the active buffer when used in the |statusline|
"let g:bufferline_active_highlight = 'StatusLine'

"* denotes whether the active highlight should be used when there is only one buffer.
"let g:bufferline_solo_highlight = 0

"* denotes any exclude patterns.
"let g:bufferline_excludes = [] "see source for defaults

"* denotes whether paths in buffer names should be |pathshorten()|-ed.
let g:bufferline_pathshorten = 0

"------Powerline-Settings ------------"
"let g:Powerline_symbols = 'fancy'
"set nocompatible   " Disable vi-compatibility
"set laststatus=2   " Always show the statusline
"set encoding=utf-8 " Necessary to show

"override split border colors
hi vertsplit guibg=background guifg=background

set t_CO=256								    "Use 256 colors. This is useful for Terminal Vim.
set guifont=Fira_Code:h19   					"Set the default font family and size.
"set guifont=FuraCode\ NF:h15					"Set the default font family and size.
set linespace=20   						        "Macvim-specific line-height.
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

"-----------Motions----------------"
nnoremap <Leader>c ci'
nnoremap <Leader>C ci"
nnoremap <Leader>t cit

"-----------Git-Blame--------------"
nnoremap <Leader>b :<C-u>call gitblame#echo()<CR>

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

"Clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

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
"let g:ctrlp_working_path_mode = 0

"--------NERDTree-Customizations---------"

let NERDTreeHijackNetrw = 0
let NERDTreeWinSize=45

"--RANDOM--"
highlight link htmlLink text

"-------------Airline--------------------"

"-----------PHP-CS-AUTO-FIXER------------"

" If php-cs-fixer is in $PATH, you don't need to define line below
" let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar

" If you use php-cs-fixer version 1.x
"let g:php_cs_fixer_level = "symfony"                   " options: --level (default:symfony)
"let g:php_cs_fixer_config = "default"                  " options: --config
" If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag" " options: --fixers
"let g:php_cs_fixer_config_file = '.php_cs'            " options: --config-file
" End of php-cs-fixer version 1 config params

" If you use php-cs-fixer version 2.x
let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)
"let g:php_cs_fixer_cache = ".php_cs.cache" " options: --cache-file
let g:php_cs_fixer_config_file = '~/.iBILLZYphp_cs' " options: --config
" End of php-cs-fixer version 2 config params

let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.

"let g:blank_line_before_return = 1
"let g:not_operator_with_space = 1
"let g:logical_not_operators_with_spaces = 1
"let g:logical_not_operators_with_successor_space = 1

nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>

"-------------Vdebug---------------------"

nmap <Leader>s :Breakpoint<cr>

"-------------Auto-Commands--------------"

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source % "Automatically source the Vimrc file on save.
    autocmd BufWritePost *.php silent! call PhpCsFixerFixFile() "Run php-cs-fixer on save
augroup END
