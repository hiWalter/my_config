"===		 :::::::::::::::::                   |,ｨ                 {{{
"===　　 　 　 　!:::::::::::::::      　            /!
"===　　　　　　 i::::::::::::::    　   _'"ﾞﾞﾞﾞﾞ"''/ l
"===		  |::::::::::::	      _'  ....     /  l
"===　 　 　 　 　!:::::::::::: 　,,,ｒ ."    ゞ、　  ヾ
"===　　　　　　　|:::::::::,,-''''""　';:ﾐ;    〉   .:ﾐ
"===　 　 　 　 　 i::::;:'　　 　 　.::ﾐ     　　 .::ﾐ
"===　　　　　　 　ﾚ':.　　　　, '""''-,,_　　てlﾌ=====i~i＝ニニ0
"===　　　　　　　 ﾐ:::　　　  ﾐ  　　　  ）ニｰ'"tｭi三三iﾐ'"ゞ二≡≡ニニ二二()
"===　　　　　　　ﾐ:::　 　 ''""ヽi i i j'＿ﾉﾉーi・￣二,ﾐ　　ミ──’
"===　　　　　 　ﾐ::　　　、　　　'"'''"ﾐ￣     └─---'' '''''"
"===　　　　　　彡:.　 　　ヽ:.　 　  '"⌒'"⌒	  ::::\　  ＼"'-,; .
"===　　　 　　 ﾍ:::..　　　ﾉ::..　　  .: t-_ヽ    ::::\ 　  ＼:."'-,, . 
"===　 　　 　/ i,- t -<;;;;､;;;;､,,､,､;;､i___ゝ   :::::\　    ＼:.:.:"'-,,
"===　    　 /　 ''ｰ-ﾞｰ':::::::::::::::::::::::　  ::::::\　     ＼:.:.:"'-,,
"===　 　   /　　　　　.::::::::::::::::::::::　  　::::::\        ＼:.:.:.:.:
"===　     /　　　　....::::::::::::::::::::　　　 　 :::::\         \:.:.:.:.:
"
"=============    __    _ __              _               _         
"=============   / /_  (_) /______ ______(_)  ____ _   __(_)___ ___ 
"=============  / __ \/ / //_/ __ `/ ___/ /  / __ \ | / / / __ `__ \
"============= / / / / / ,< / /_/ / /  / /  / / / / |/ / / / / / / /
"=============/_/ /_/_/_/|_|\__,_/_/  /_/  /_/ /_/|___/_/_/ /_/ /_/ 
"=============
"
"================
"===TO-DO list===
"================
" }}}


" BASIC CONFIGURATION
set number relativenumber
set wildmenu
set path+=**
set encoding=UTF-8
set cursorline
set showmatch
set mouse=ar
set smartcase	
set foldenable
set foldmethod=marker
set foldmarker={{{,}}}

" Keymap setting - squence: all, i, n,..
map W :w<CR>
map Q :q<CR>
map R :source %<CR>

imap ;; <Esc>

nmap <space> :

" Plugin {{{ 
call plug#begin('~/.vim/plugged')i
	" Language support
	Plug 'fatih/vim-go'			" Go 
	Plug 'rust-lang/rust.vim'		" Rust
	
	" Tools for coding 
	Plug 'scrooloose/nerdtree'		" nerdtree
	Plug 'vim-scripts/peaksea'		" peaksea
	Plug 'vim-airline/vim-airline'		" airline
	Plug 'tpope/vim-fugitive'		" fugitive
	Plug 'w0rp/ale'				" ale 
	Plug 'neoclide/coc.nvim'		" coc.vim
	Plug 'junegunn/fzf'			" fuzzy file finder
	

call plug#end()

" peaksea setting
if ! has("gui_running")
    set t_Co=256
endif
" feel free to choose :set background=light for a different style
set background=dark
colors peaksea

" }}}o



