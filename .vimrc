"For Vundle.
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
Plugin 'FuzzyFinder'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'taglist.vim'
let Tlist_Show_One_File=1  
let Tlist_Exit_OnlyWindow=1  
let Tlist_Use_Right_Window = 1
let Tlist_Ctags_Cmd='/usr/local/bin//ctags'
Plugin 'Mark'
Plugin 'The-NERD-tree'
function! NTFinderP()
	"" Check if NERDTree is open
	if exists("t:NERDTreeBufName")
		let s:ntree = bufwinnr(t:NERDTreeBufName)
	else
		let s:ntree = -1
	endif
	if (s:ntree != -1)
		"" If NERDTree is open, close it.
		:NERDTreeClos
	else
		"" Try to open a :Rtree for the rails project
		if exists(":Rtree")
			"" Open Rtree (using rails plugin, it opens in project dir)
			:Rtree
		else
			"" Open NERDTree in the file path
			:NERDTreeFind
		endif
	endif	
endfunction
map <silent> B :call NTFinderP()<CR>
Plugin 'uguu-org/vim-matrix-screensaver'
Plugin 'closetag.vim'
Plugin 'The-NERD-Commenter'
Plugin 'matchit.zip'
Plugin 'jsbeautify'
Plugin 'YankRing.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
" let g:ycm_filetype_blacklist = {
"    \ 'python' : 1,
"    \}
Plugin 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"
Plugin 'davidhalter/jedi-vim'
"let g:jedi#use_splits_not_buffers = "left"
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项
"在字符串输入中也能补全
"let g:ycm_complete_in_strings = 1
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'Tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'Lokaltog/vim-powerline'
Plugin 'sjl/gundo.vim'
nnoremap <F8> :GundoToggle<CR>
Plugin 'eugeneching/consolas-powerline-vim'
Plugin 'Gitv'
Plugin 'python.vim'
Plugin 'nvie/vim-flake8'
autocmd FileType python map <buffer> <F1> :call Flake8()<CR>
Plugin 'pyflakes.vim'
Plugin 'longfeey/vundle-vim'
Plugin 'vim-scripts/pydoc.vim'
Plugin 'carlobaldassi/ConqueTerm'
Plugin 'Raimondi/delimitMate'
Plugin 'joonty/vdebug.git'
" Plugin 'nathanaelkane/vim-indent-guides'
" let g:indent_guides_start_level=2
" let g:indent_guides_guide_size=1
Plugin 'mattn/emmet-vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'wavded/vim-stylus'
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets = ',,'
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"vnoremap <C-c><C-c> :<C-u>call conque_term#send_selected(visualmode())<CR><Esc><C-w>p  
"noremap <C-c><C-c> V:call conque_term#send_selected(visualmode())<CR><Esc><C-w>p
""pydiction 1.2 python auto complete
"filetype plugin on
"let g:pydiction_location = '/Users/huangli/.vim/after/complete-dict'
""defalut g:pydiction_menu_height == 15
""let g:pydiction_menu_height = 20 

"set filetype=python
"au BufNewFile,BufRead *.py,*.pyw setf python

" vim-powerline setting
set laststatus=2 
set encoding=utf-8
" set nocompatible 
" set t_Co=256 
let g:Powerline_symbols = 'fancy'
"Plugin 'indentLine.vim'
"Plugin 'delimitMate.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" End Vundle.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set autoindent
set smartindent

" Sets how many lines of history VIM has to remember
set history=145

" Set 5 lines to the cursor - when moving vertically using j/k
set so=5

let mapleader = ","
let g:mapleader = ","
" set expandtab
" autocmd FileType python setlocal et sta sw=4 sts=4
" autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType coffee setlocal et sta sw=4 sts=4
syntax on
set nocp  
filetype plugin on 
let g:acp_completeoptPreview = 1

syntax enable
"if has('gui_running')
"	set background=light
"else
"	set background=dark
"endif
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
colorscheme solarized

"代码折叠，预览。
set foldmethod=indent
set foldlevel=99
set completeopt=longest,menu

"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
"set completeopt+=longest
" 
" "离开插入模式后自动关闭预览窗口
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"  
"  "回车即选中当前项
"  inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"   
"   "上下左右键的行为
"   inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
"   inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
"   inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" :
"   "\<PageDown>"
"   inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" :
"   "\<PageUp>"

"Java
autocmd FileType java set omnifunc=javacomplete#Complete

"Html/Css
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

"Json
au! BufRead,BufNewFile *.json set filetype=json
augroup json_autocmd 
  autocmd! 
  autocmd FileType json set autoindent 
  autocmd FileType json set formatoptions=tcq2l 
  autocmd FileType json set textwidth=78 shiftwidth=2 
  autocmd FileType json set softtabstop=2 tabstop=8 
  autocmd FileType json set expandtab 
  autocmd FileType json set foldmethod=syntax 
augroup END

"Clang
autocmd FileType c,cpp set cindent
autocmd FileType c,cpp set shiftwidth=4
autocmd FileType c,cpp set tabstop=4
autocmd FileType c,cpp set expandtab

" Indent Python in the Google way.

autocmd FileType python setlocal indentexpr=GetGooglePythonIndent(v:lnum)

let s:maxoff = 50 " maximum number of lines to look backwards.

function GetGooglePythonIndent(lnum)

  " Indent inside parens.
  " Align with the open paren unless it is at the end of the line.
  " E.g.
  "   open_paren_not_at_EOL(100,
  "                         (200,
  "                          300),
  "                         400)
  "   open_paren_at_EOL(
  "       100, 200, 300, 400)
  call cursor(a:lnum, 1)
  let [par_line, par_col] = searchpairpos('(\|{\|\[', '', ')\|}\|\]', 'bW',
        \ "line('.') < " . (a:lnum - s:maxoff) . " ? dummy :"
        \ . " synIDattr(synID(line('.'), col('.'), 1), 'name')"
        \ . " =~ '\\(Comment\\|String\\)$'")
  if par_line > 0
    call cursor(par_line, 1)
    if par_col != col("$") - 1
      return par_col
    endif
  endif

  " Delegate the rest to the original function.
  return GetPythonIndent(a:lnum)

endfunction

let pyindent_nested_paren="&sw*2"
let pyindent_open_paren="&sw*2"

"map <C-t> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"inoremap <C-h> <Left>
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-l> <Right>
