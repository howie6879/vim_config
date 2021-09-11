" Howie's vim configuration
"
" Load all plugins
call plug#begin('~/.vim/plugged')


Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Load vim-airline
" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Load nerdtree
" https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'

" Load https://github.com/Xuyuanp/nerdtree-git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'

" Load undotree
" https://github.com/mbbill/undotree
Plug 'mbbill/undotree'

"Load nerdcommenter
" https://github.com/scrooloose/nerdcommenter
Plug 'scrooloose/nerdcommenter'

" Load rainbow
" https://github.com/kien/rainbow_parentheses.vim
Plug 'kien/rainbow_parentheses.vim'

" Load tagbar
" https://github.com/majutsushi/tagbar
" Plug 'majutsushi/tagbar'

" https://github.com/liuchengxu/vista.vim
Plug 'liuchengxu/vista.vim'

" Load Plug vim-startify
" https://github.com/mhinz/vim-startify
Plug 'mhinz/vim-startify'

" Load https://github.com/dense-analysis/ale
Plug 'dense-analysis/ale'

" ctrlp.vim
" https://github.com/kien/ctrlp.vim
Plug 'kien/ctrlp.vim'

" accelerated-smooth-scroll
" https://github.com/yonchu/accelerated-smooth-scroll
Plug 'yonchu/accelerated-smooth-scroll'

" Color Plugin
" Load dracula/vim
" https://github.com/dracula/vim
Plug 'dracula/vim', { 'as': 'dracula' }

" Load vim-colors-solarized
" https://github.com/altercation/vim-colors-solarized
Plug 'altercation/vim-colors-solarized'

" https://github.com/morhetz/gruvbox
Plug 'morhetz/gruvbox'

" https://github.com/skywind3000/asyncrun.vim
Plug 'skywind3000/asyncrun.vim'

" https://github.com/godlygeek/tabular
Plug 'godlygeek/tabular'

" Markdown Plugin
" Load vim-markdown
" https://github.com/plasticboy/vim-markdown
Plug 'plasticboy/vim-markdown'

" markdown-preview.vim
" https://github.com/iamcco/markdown-preview.vim
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

" https://github.com/vim-python/python-syntax
Plug 'vim-python/python-syntax'

" https://github.com/itchyny/vim-cursorword
Plug 'itchyny/vim-cursorword'

" https://github.com/mzlogin/vim-markdown-toc
Plug 'mzlogin/vim-markdown-toc'
Plug 'dhruvasagar/vim-table-mode'

" Load SirVer/ultisnips honza/vim-snippets
" https://github.com/SirVer/ultisnips
" https://github.com/honza/vim-snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Load jedi-vim
" https://github.com/davidhalter/jedi-vim
" Plug 'davidhalter/jedi-vim'

" Load vim-gitgutter
" https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'

" Load vim-cheat40
" https://github.com/lifepillar/vim-cheat40
Plug 'lifepillar/vim-cheat40'

" Load auto-pairs
" https://github.com/jiangmiao/auto-pairs 
Plug 'jiangmiao/auto-pairs'

" Load https://github.com/heavenshell/vim-pydocstring
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }

"Load vim-devicons
"https://github.com/ryanoasis/vim-devicons
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Basic Vim Configuration
set encoding=utf-8	" Set encoding
set termencoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

set number		" Show number
set ignorecase
set tabstop=4
set shiftwidth=4
set backspace=2
set ff=unix
set mouse=a
set ruler
set nocompatible
" set laststatus=2

syntax on		" Syntax highlighting
filetype plugin indent on

" Color settings
let g:solarized_termcolors=256
if has('gui_running')
    set background=dark
	colorscheme gruvbox
	" colorscheme solarized
	" color dracula
else
	set background=dark
	" color dracula
	colorscheme gruvbox
	" colorscheme solarized
endif

" Plugin Congiguration
"
" Airline settings
"let g:airline_theme = 'molokai'
let g:airline_theme = 'onedark'
let g:airline_powerline_fonts = 1
set guifont=DroidSansMono\ Nerd\ Font:h13
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"设置切换Buffer快捷键"
nnoremap <C-N> :bn<CR>
nnoremap <C-B> :bp<CR>
let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'

" 关于buffer的配置
" 避免必须保存修改才可以跳转buffer
set hidden
" normal 模式下使用 bl 列出 Buffer 列表
nnoremap <silent> bl :ls<CR>
" normal 模式下使用 bo 打开一个新 Buffer
nnoremap <silent> bo :enew<CR>
" normal 模式下使用 bn 切换到下一个 Buffer
nnoremap <silent> bn :bnext<CR>
" normal 模式下使用 bn 切换到上一个 Buffer
nnoremap <silent> bp :bprevious<CR>
" normal 模式下使用 bd 关闭当前 Buffer
nnoremap <silent> bd :bdelete<CR>
" 通过索引快速跳转
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" NerdTree settings
set rtp+=~/.vim/plugged/nerdtree
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '\.idea', '\.vscode', '__pycache__', '\.DS_Store', '\.git$']
" show ignore status
let g:NERDTreeGitStatusShowIgnored = 1
let g:NERDTreeGitStatusIndicatorMapCustom= {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" Undotree settings
nnoremap <F9> :UndotreeToggle<cr>
let g:undotree_WindowLayout = 4
set undodir=$HOME/.vim/undo/
set undofile

" Tagbar settings
" let g:tagbar_width=35
" let g:tagbar_autofocus=1
" map <F4> :TagbarToggle<CR>

" vista configuration
let g:vista#renderer#enable_icon = 0
let g:vista_echo_cursor_strategy = 'floating_win'
map <F4> :Vista!!<CR>


function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
let g:vista_sidebar_width = 35
let g:vista_default_executive = 'ctags'

" Markdown settings
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1

" UltiSnips setting
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" GuiGutter	
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

" NERD Commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 0
let g:NERDCompactSexyComs = 1

" vim-table-mode
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'

" rainbow
let g:rbpt_colorpairs = [
    \ ['red',         'firebrick3'],
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


" ALE configuration
let g:ale_python_auto_pipenv = 1
let g:ale_linters = {
	\ 'python': ['pylint'],
	\}
let g:ale_fixers = {
	\ 'python': ['black', 'isort'],
    \ }
let g:ale_fix_on_save = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_sign_error = '✗'
let g:ale_sign_warning = 'w'
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)

" Qickly run
nnoremap <F5> :call CompileRunGcc()<cr>

func! CompileRunGcc()
          exec "w"
          if &filetype == 'python'
                  if search("@profile")
                          exec "AsyncRun kernprof -l -v %"
                          exec "copen"
                          exec "wincmd p"
                  elseif search("set_trace()")
                          exec "!pipenv run python %"
                  else
                          exec "AsyncRun -raw pipenv run python %"
                          exec "copen"
                          exec "wincmd p"
                  endif
          endif

	  endfunc

" Python syntax
let g:python_highlight_all = 1
let g:ultisnips_python_style = 'sphinx'

" pydocstring
let g:pydocstring_formatter = 'sphinx'
nmap <silent> <C-_> <Plug>(pydocstring)

"get rid of [  ] around icons in NerdTree
syntax enable
if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif

" vim md config
set conceallevel=0
" Jedi
" autocmd FileType python setlocal completeopt-=preview

" Coc
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
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
"解决coc.nvim大文件卡死状况
let g:trigger_size = 0.5 * 1048576

augroup hugefile
  autocmd!
  autocmd BufReadPre *
        \ let size = getfsize(expand('<afile>')) |
        \ if (size > g:trigger_size) || (size == -2) |
        \   echohl WarningMsg | echomsg 'WARNING: altering options for this huge file!' | echohl None |
        \   exec 'CocDisable' |
        \ else |
        \   exec 'CocEnable' |
        \ endif |
        \ unlet size
augroup END

