" Howie's vim configuration
"
" Load all plugins
call plug#begin('~/.vim/plugged')

" Load vim-airline
" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Load nerdtree
" https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree'

" Load tagbar
" https://github.com/majutsushi/tagbar
Plug 'majutsushi/tagbar'

" Load Plug vim-startify
" https://github.com/mhinz/vim-startify
Plug 'mhinz/vim-startify'

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

" Markdown Plugin
" Load vim-markdown
" https://github.com/plasticboy/vim-markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" markdown-preview.vim
" https://github.com/iamcco/markdown-preview.vim
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

" Load vim-go
" Target url: https://github.com/fatih/vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Load YouCompleteMe
" https://github.com/Valloric/YouCompleteMe
Plug 'Valloric/YouCompleteMe',{'do':'/usr/local/opt/python/libexec/bin/python install.py --go-completer'}

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
    set background=light
	" colorscheme solarized
	color dracula
else
	set background=dark
	colorscheme solarized
endif

" Plugin Congiguration
"
" Airline settings
let g:airline_theme = 'molokai'
" let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set guifont=Meslo\ LG\ S\ for\ Powerline:h13
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'

" NerdTree settings
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

" Tagbar settings
let g:tagbar_width=35
let g:tagbar_autofocus=1
map <F4> :TagbarToggle<CR>

" Markdown settings
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1

" YCM settings
" let g:ycm_server_python_interpreter='/Users/a2017148/anaconda3/bin/python3'
" let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
" 让vim的补全菜单行为与一般IDE一致
set completeopt=longest,menu
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}

" UltiSnips setting
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" GuiGutter	
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

