set encoding=utf-8
scriptencoding utf-8


"""plugin vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_powerline_fonts = 1


"""plugin ctrlp
let g:ctrlp_max_files = 0
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_lazy_update = 100
let g:ctrlp_cmd = 'CtrlPMRU'


"""plugin colorscheme dracula
packadd! dracula
syntax enable
colorscheme dracula


"""colorscheme transparent
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE ctermfg=239
highlight SpecialKey ctermbg=NONE guibg=NONE ctermfg=239
highlight EndOfBuffer ctermbg=NONE guibg=NONE


""""misc
set virtualedit=block
set ignorecase
set wrapscan
set incsearch
set hlsearch
set smartindent
set showmatch
set title
set number
set directory=~/.vim/tmp
set list listchars=tab:>-,space:-,eol:$,trail:-
"https://qiita.com/ysn/items/f4fc8f245ba50d5fb8b0
set noexpandtab tabstop=4 softtabstop=-1 shiftwidth=0


"""cursorline (only underline)
"set cursorline
"highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE


"""grep (use ripgrep)
if executable('rg')
	let &grepprg = 'rg --vimgrep'
	set grepformat=%f:%l:%c:%m
endif
autocmd QuickFixCmdPost *grep* cwindow


"""cscope
set cscopetag


"""80 column markar
"let &colorcolumn=join(range(81,999),",")
"hi ColorColumn ctermbg=235 guibg=#2c2d27


"""leader
let mapleader = "\<Space>"
nnoremap <Leader>n :cnext<CR>
nnoremap <Leader>p :cprevious<CR>
nnoremap <Leader>w :write<CR>

"""autocmd
autocmd BufWritePre * :%s/\s\+$//e


