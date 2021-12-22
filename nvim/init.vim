"===		 :::::::::::::::::                   |,ｨ                
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
"================
"===TO-DO list===
"================

" Plugin  
call plug#begin('~/.vim/plugged')
	" Language support
	Plug 'fatih/vim-go'			" Go 
	Plug 'rust-lang/rust.vim'		" Rust
	
	" Tools for coding
	Plug 'ianding1/leetcode.vim' 		" Leetcode
	Plug 'scrooloose/nerdtree'		" nerdtree
	Plug 'vim-airline/vim-airline'			" airline
	Plug 'tpope/vim-fugitive'				" fugitive
	Plug 'w0rp/ale'						" ale 
	Plug 'neoclide/coc.nvim', {'branch': 'release'}		" coc.vim
	Plug 'junegunn/fzf'			" fuzzy file finder	
	Plug 'honza/vim-snippets'

call plug#end()


" BASIC CONFIGURATION
set number 		relativenumber
set wildmenu
set path+=**
set encoding=UTF-8
set showmatch
set mouse=ar
set smartcase 		ignorecase
set foldenable  	foldmethod=marker 	foldmarker={{{,}}}
set noswapfile
set cursorline

source ~/.config/nvim/plugin.vim

try
	set undodir=~/.config/nvim/undodir undofile
catch
endtry

syntax enable
syntax on

" Keymap setting - squence: all, i, n,..

let mapleader = ";"


map <leader>w :w<CR>
map <leader>q :q<CR>
map <leader>r :source $MYVIMRC<CR>
map <leader>h :noh<CR>
map <leader>s :vsplit<CR>

map <leader>t :tabe<CR>

"noremap h 5h
"noremap j 5j
"noremap k 5k 
"noremap l 5l

imap ;; <Esc>

nmap <space> :




"===
"===leetcode-vim
"===
let g:leetcode_browser='chrome'

"===
"===NERDTree
"===
map <leader>n :NERDTreeToggle<CR>

"===
"=== color-scheme -- revise from peaksea
"===
    " 256color dark terminal support here
    hi Normal		ctermfg=252	ctermbg=234	cterm=NONE
    " Comment/Uncomment the following line to disable/enable transparency
    hi Normal		ctermfg=252	ctermbg=NONE	cterm=NONE
    hi Comment		ctermfg=186	ctermbg=NONE	cterm=NONE
    hi Constant		ctermfg=110	ctermbg=NONE	cterm=NONE
    hi Number		ctermfg=179	ctermbg=NONE	cterm=NONE
    hi Identifier	ctermfg=219	ctermbg=NONE	cterm=NONE
    hi Statement	ctermfg=153	ctermbg=NONE	cterm=NONE
    hi PreProc		ctermfg=84	ctermbg=NONE	cterm=NONE
    hi Type		ctermfg=153	ctermbg=NONE	cterm=NONE
    hi Special		ctermfg=179	ctermbg=NONE	cterm=NONE
    hi Error		ctermfg=209	ctermbg=NONE	cterm=NONE
    hi Todo		ctermfg=88	ctermbg=186	cterm=NONE
    hi Search		ctermfg=NONE	ctermbg=88	cterm=NONE
    hi Visual		ctermfg=16	ctermbg=153	cterm=NONE
    hi Cursor		ctermfg=16	ctermbg=46	cterm=NONE
    " NOTE THIS IS IN THE COOL SECTION
    hi CursorIM		ctermfg=16	ctermbg=219	cterm=NONE
    hi StatusLine	ctermfg=16	ctermbg=153	cterm=NONE
    hi LineNr		ctermfg=249	ctermbg=NONE	cterm=NONE
    hi Question		ctermfg=16	ctermbg=186	cterm=NONE
    hi ModeMsg		ctermfg=fg	ctermbg=18	cterm=NONE
    hi VisualNOS	ctermfg=fg	ctermbg=18	cterm=NONE
    hi SpecialKey	ctermfg=153	ctermbg=NONE	cterm=NONE
    hi NonText		ctermfg=69	ctermbg=233	cterm=NONE
    " Comment/Uncomment the following line to disable/enable transparency
    hi NonText		ctermfg=69	ctermbg=NONE	cterm=NONE
    hi Directory	ctermfg=110	ctermbg=NONE	cterm=NONE
    hi ErrorMsg		ctermfg=186	ctermbg=88	cterm=NONE
    hi MoreMsg		ctermfg=150	ctermbg=NONE	cterm=NONE
    hi Title		ctermfg=219	ctermbg=NONE	cterm=NONE
    hi WarningMsg	ctermfg=209	ctermbg=NONE	cterm=NONE
    hi WildMenu		ctermfg=16	ctermbg=186	cterm=NONE
    hi Folded		ctermfg=NONE	ctermbg=22	cterm=NONE
    hi FoldColumn	ctermfg=254	ctermbg=28	cterm=NONE
    hi DiffAdd		ctermfg=NONE	ctermbg=18	cterm=NONE
    hi DiffChange	ctermfg=NONE	ctermbg=90	cterm=NONE
    hi DiffDelete	ctermfg=69	ctermbg=234	cterm=NONE
    hi DiffText		ctermfg=16	ctermbg=150	cterm=NONE
    hi SignColumn	ctermfg=254	ctermbg=28	cterm=NONE
    hi IncSearch	ctermfg=16	ctermbg=252	cterm=NONE
    hi StatusLineNC	ctermfg=16	ctermbg=250	cterm=NONE
    hi VertSplit	ctermfg=16	ctermbg=250	cterm=NONE
    hi Underlined	ctermfg=111	ctermbg=NONE	cterm=underline 
    hi Ignore		ctermfg=16	ctermbg=NONE
    " NOTE THIS IS IN THE COOL SECTION
    if v:version >= 700
      if has('spell')
        " the ctermsp= is not supported in Vim 7 we simply ignored
        if 0
          hi SpellBad	cterm=undercurl	ctermbg=NONE	ctermfg=209
          hi SpellCap	cterm=undercurl	ctermbg=NONE	ctermfg=69
          hi SpellRare	cterm=undercurl	ctermbg=NONE	ctermfg=219
          hi SpellLocal	cterm=undercurl	ctermbg=NONE	ctermfg=153
        else
          hi SpellBad	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
          hi SpellCap	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
          hi SpellRare	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
          hi SpellLocal	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
        endif
      endif
      hi Pmenu		ctermfg=fg	ctermbg=90
      hi PmenuSel	ctermfg=16	ctermbg=252	cterm=NONE
      hi PmenuSbar	ctermfg=fg	ctermbg=18	cterm=NONE
      hi PmenuThumb	ctermfg=fg	ctermbg=28	cterm=NONE
      hi TabLine	ctermfg=fg	ctermbg=28	cterm=NONE
      hi TabLineFill	ctermfg=fg	ctermbg=28	cterm=NONE
      hi TabLineSel	ctermfg=fg	ctermbg=NONE	cterm=NONE
      hi CursorColumn	ctermfg=NONE	ctermbg=88	cterm=NONE
      hi CursorLine	ctermfg=NONE	ctermbg=NONE	cterm=underline
      hi MatchParen	ctermfg=NONE	ctermbg=90
      hi TabLine	cterm=underline  
      hi TabLineFill	cterm=underline  
      hi Underlined	cterm=underline  
      hi CursorLine	cterm=underline 
    endif

" Links:
"
" COLOR LINKS DEFINE START

hi link		String		Constant
" Character must be different from strings because in many languages
" (especially C, C++) a 'char' variable is scalar while 'string' is pointer,
" mistaken a 'char' for a 'string' will cause disaster!
hi link		Character	Number
hi link		SpecialChar	LineNr
hi link		Tag		Identifier
hi link		cCppOut		LineNr
" The following are not standard hi links, 
" these are used by DrChip
hi link		Warning		MoreMsg
hi link		Notice		Constant
" these are used by Calendar
hi link		CalToday	PreProc
" these are used by TagList
hi link		MyTagListTagName	IncSearch
hi link		MyTagListTagScope	Constant



" COC CONFIG 

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.

"===
"===NERDTree
"===
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
