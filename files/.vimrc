"Goran Savovskis .vimrc

"*************************************************** PLUGIN MANAGER
"*************************************************** Neobundle

if has('vim_starting')
   set nocompatible               " Be iMproved
   set runtimepath+=~/dotify/files/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" dotify/setup runs direct git clone before the installation starts
NeoBundleFetch 'Shougo/neobundle.vim'

"*************************************************** PLUGINS
"***************************************************
"***************************************************
"———————————————————————————————————————————————————————————

" User Experience
NeoBundle 'ervandew/supertab'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'rking/ag.vim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'vim-scripts/visualrepeat'
NeoBundle 'vim-scripts/tComment'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'terryma/vim-smooth-scroll'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'jpalardy/vim-slime' "Emacs like send to terminal, useful for pry from vim
" NeoBundle 'matze/vim-move'
NeoBundle "kana/vim-fakeclip"
NeoBundle 'AndrewRadev/undoquit.vim'
NeoBundle 'chrisbra/Recover.vim'
NeoBundle 'bling/vim-airline'
" Window resizing (C-e + hjkl)
NeoBundle 'jimsei/winresizer'

"Looking up words in english
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'ujihisa/neco-look'

"File explorers

NeoBundle 'scrooloose/nerdtree'
" Like nerdtree but more vimish
NeoBundleLazy 'Shougo/vimfiler', {'autoload' : { 'commands' : ['VimFiler']}}


" Live display matches for search and replace
NeoBundle 'osyo-manga/vim-over'
" Jump directly anywhere on screen (Vimium like)
" NeoBundle 'skwp/vim-easymotion'

" Distraction free editing
NeoBundle 'junegunn/goyo.vim'
NeoBundle 'amix/vim-zenroom2'

"Frameworks,languages
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-surround'
NeoBundle 'kana/vim-operator-user'
NeoBundle 'rhysd/vim-operator-surround'
NeoBundle 'jnwhiteh/vim-golang'
NeoBundle 'claco/jasmine.vim'
NeoBundle 'tpope/vim-cucumber'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'tpope/vim-dispatch'
NeoBundle "pangloss/vim-javascript"
NeoBundle "vim-ruby/vim-ruby"
NeoBundle 'vim-scripts/VIM-Color-Picker'
NeoBundle 'jcf/vim-latex'
NeoBundle 'gregsexton/gitv'
NeoBundle 'honza/vim-snippets'


" if has('lua')
"   NeoBundle 'Shougo/neocomplete.vim'0
"   let g:neocomplete#enable_at_startup = 1
"
"   " <CR>: close popup and save indent.
"   inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"
"   function! s:my_cr_function()
"     return neocomplete#smart_close_popup() . "\<CR>"
"     " For no inserting <CR> key.
"     "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
"   endfunction
" else
"   let g:neocomplcache_enable_at_startup = 1
" "  NeoBundle 'Shougo/neocomplete.vim'
" endif

" Add neosnippets

if has('python')
  " NeoBundle 'SirVer/ultisnips'
  " NeoBundle 'skeept/Ultisnips-neocomplete-unite'
endif

" Syntax checkers
" NeoBundle 'wookiehangover/jshint.vim'
NeoBundle 'scrooloose/syntastic' "{{{
  let g:syntastic_error_symbol = '✗'
  let g:syntastic_style_error_symbol = '✠'
  let g:syntastic_warning_symbol = '∆'
  let g:syntastic_style_warning_symbol = '≈'
  highlight SyntasticErrorSign guifg=white guibg=red
  let g:syntastic_enable_highlighting = 0
  let g:syntastic_enable_balloons = 1
"}}}

NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }


"*************************************************** UNITE
" Awesomness!!!
NeoBundle 'Shougo/Unite.vim'

"*************************************************** Unite plugins

NeoBundleLazy 'Shougo/unite-outline', {'autoload':{'unite_sources':'outline'}}
NeoBundleLazy 'tsukkee/unite-help', {'autoload':{'unite_sources':'help'}}
NeoBundleLazy 'ujihisa/unite-colorscheme', {'autoload':{'unite_sources':
            \ 'colorscheme'}}
NeoBundleLazy 'ujihisa/unite-locate', {'autoload':{'unite_sources':'locate'}}
NeoBundleLazy 'thinca/vim-unite-history', { 'autoload' : { 'unite_sources' :
            \ ['history/command', 'history/search']}}
NeoBundleLazy 'osyo-manga/unite-filetype', { 'autoload' : {'unite_sources' :
            \ 'filetype', }}
NeoBundleLazy 'osyo-manga/unite-quickfix', {'autoload':{'unite_sources':
            \ ['quickfix', 'location_list']}}
NeoBundleLazy 'osyo-manga/unite-fold', {'autoload':{'unite_sources':'fold'}}
NeoBundleLazy 'tacroe/unite-mark', {'autoload':{'unite_sources':'mark'}}
NeoBundleLazy 'Shougo/neomru.vim', {'autoload':{'unite_sources':
            \['file_mru', 'directory_mru']}}

" Junk files
NeoBundleLazy 'Shougo/junkfile.vim', {'autoload':{'commands':'JunkfileOpen',
            \ 'unite_sources':['junkfile','junkfile/new']}}

" Unite plugin that provides command line completition
NeoBundle 'majkinetor/unite-cmdmatch'

"}}}


"*************************************************** TERMINAL

set term=linux
set t_Co=256
set ttymouse=xterm2

"*************************************************** LEADER

let mapleader = ";"

"*************************************************** Color schemes

" Color schemes {{{

NeoBundle 'altercation/vim-colors-solarized'
  let g:solarized_termcolors=256
  let g:solarized_termtrans=1
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'sjl/badwolf'
NeoBundle 'zeis/vim-kolor'
  let g:kolor_underlined=1
NeoBundleLazy 'ujihisa/unite-colorscheme', {'autoload':{'unite_sources':
          \ 'colorscheme'}}

"}}}

set background=light
" color lucius
color Tomorrow-Night-Eighties
let g:airline_theme='luna'


" Select colorschemes with live preview {{{
NeoBundleLazy 'osyo-manga/unite-airline_themes', {'autoload':{'unite_sources':'airline_themes'}} "{{{

 nnoremap <silent> <space>a :<C-u>Unite -winheight=10 -auto-preview -buffer-name=airline_themes airline_themes<cr>
":Unite colorscheme -auto-preview
" }}}
"Unite outline no-split no-quit

"*************************************************** Unite mappings

let g:unite_split_rule = "botright"
nnoremap <leader>z :Unite  -buffer-name=files   -start-insert buffer file_rec/async:!<cr>
" nnoremap <leader>/ :Unite grep:.<cr>
nnoremap <silent><leader>/ :<C-u>Unite -no-quit -keep-focus grep<CR>
"
"
"
"
"MY MOST USED COMMAND COMBINATION, wonder wich mapping would be healthiest
nnoremap <leader>l :Unite -here file_rec/async<cr>



" let g:unite_winheight = 20
" let g:unite_winheight=10
set previewheight=30
nnoremap <leader>f :<C-u>Unite -start-insert -auto-preview -winheight=10 -no-split file_rec/async:!<CR>
" nnoremap <leader>f :Unite -no-split -start-insert -auto-preview -winheight=10 file_rec/async<cr>
nnoremap <space>s :Unite -quick-match buffer<cr>
nmap <buffer> <C-i> <Plug>(unite_toggle_auto_preview)

" nnoremap <silent> <leader>/ :<C-u>Unite -no-quit -buffer-name=search grep:.<cr>
" let g:transparency = 10
" nnoremap <C-p> :Unite -vertical -auto-preview -no-quit -keep-focus -winheight=5 file_rec/async<cr>
" nnoremap <C-p> :Unite -no-split -start-insert -auto-preview -winheight=5 file_rec/async<cr>

"*************************************************** Unite settings
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#set_profile('files', 'smartcase', 1)
call unite#custom#source('line,outline','matchers','matcher_fuzzy')

call unite#custom#source('file_rec/async',
            \ 'ignore_pattern', join(['\.git\/', 'tmp\/',
            \ 'app\/assets\/images\/', 'app\/assets\/fonts\/', '\/spec\/cassettes\/', 'public\/' ], '\|')
            \ )
let g:unite_data_directory='~/.vim/.cache/unite'
let g:unite_source_find_max_candidates=1000

let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
" let g:unite_source_rec_max_cache_files=35000
let g:unite_prompt='» '

let g:unite_source_grep_command='ag'
let g:unite_source_grep_default_opts='--nocolor --nogroup -S -C4'
let g:unite_source_grep_recursive_opt=''
let g:unite_split_rule = "botright"

" let g:unite_source_grep_default_opts = '--no-heading --no-color -a'
" let g:unite_enable_start_insert = 1
" let g:unite_force_overwrite_statusline = 0
" let g:unite_winheight = 10

" let g:unite_ignore_source_files = ['*.log', '*.svg', '*.ttf', '*.git', '*.png' ]
" call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
"       \ 'ignore_pattern', join([
"       \ '\.git/',
"       \ ], '\|'))

" call unite#filters#matcher_default#use(['matcher_fuzzy'])
" let g:unite_source_grep_command='grep'
" " let g:unite_source_grep_default_opts='--nocolor --nogroup -S -C4'
" let g:unite_source_grep_recursive_opt='-r'

" call unite#filters#sorter_default#use(['sorter_rank'])

function! s:unite_settings()
  let b:SuperTabDisabled=1
  " imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  " imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
  imap <silent><buffer><expr> <C-x> unite#do_action('split')
  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
  imap <silent><buffer><expr> <C-t> unite#do_action('tabopen')
  nmap <buffer> Q <plug>(unite_exit)
  nmap <buffer> <esc> <plug>(unite_exit)
  imap <buffer> <esc> <plug>(unite_exit)
  " nnoremap <silent><buffer><expr> p
  "       \ empty(filter(range(1, winnr('$')),
  "       \ 'getwinvar(v:val, "&previewwindow") != 0')) ?
  "       \ unite#do_action('preview') : ":\<C-u>pclose!\<CR>"
  "   nmap <buffer> <ESC> <Plug>(unite_exit)
endfunction

autocmd FileType unite call s:unite_settings()

"*************************************************** Arline settings
  " let g:airline#extensions#tabline#enabled = 1
  " let g:airline#extensions#tabline#left_sep=' '
  " let g:airline#extensions#tabline#left_alt_sep='¦'
"}}}

"*************************************************** Tabs stuff

set softtabstop=2
filetype plugin indent on
" gurad this on older versions of vim
" set regexpengine=1
syntax on


"*************************************************** MOUSE

"Fix mouse controll
:set mouse=a

"*************************************************** Indent Guide lines
" indent guides
NeoBundle 'nathanaelkane/vim-indent-guides' "{{{
let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
:" let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=238
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=237
set ts=4 sw=4 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
set list lcs=tab:\|\
let g:indentLine_color_term = 239
"}}}

"*************************************************** Settings unsorted!
"Wipe empty buffer

if bufname('%') == ''
  set bufhidden=wipe
endif

set splitbelow

set number
"set ruler
:set cursorline
hi CursorLine ctermbg=240

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
"set re=1              "set old regex system for faster response

"*************************************************** Keyboard Mappings

nnoremap <leader>w :w!<cr>
"nnoremap <leader>tn :tabnew<cr>
"nnoremap <leader>tc :tabclose<cr>
"nnoremap <leader>te :tabedit

" Smash escape
inoremap jk <esc>
inoremap kj <esc>

"Left right end of line movement
nnoremap H ^
vnoremap H ^
nnoremap L $
vnoremap L $

" reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" "navigating tabs left and right
" nmap <C-h> gT
" nmap <C-l> gt

" remap arrow keys
nnoremap <up> :bprev<CR>
nnoremap <down> :bnext<CR>
nnoremap <right> :tabnext<CR>
nnoremap <left> :tabprev<CR>

" change cursor position in insert mode
inoremap <C-h> <left>
inoremap <C-l> <right>


"change cursor position in insert mode
inoremap <C-h> <left>
inoremap <C-l> <right>
inoremap <C-u> <C-g>u<C-u>

"better regex
nnoremap / /\v
vnoremap / /\v
nnoremap ? ?\v
vnoremap ? ?\v
" Bellow slowest mapping ever, keep to remember
" nnoremap :s/ :s/\v

"screen line scroll
nnoremap <silent> j gj
nnoremap <silent> k gk

"reselect last paste
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

"make Y consistent with C and D. See :help Y.
nnoremap Y y$

"hide annoying quit message
" nnoremap <C-c> <C-c>:echo<cr>

"window killer
nnoremap <silent> Q :call CloseWindowOrKillBuffer()<cr>"

"quick buffer open
nnoremap gb :ls<cr>:e #

if neobundle#is_sourced('vim-dispatch')
  nnoremap <leader>tag :Dispatch ctags -R<cr>
endif

"Hack to overmap bash's default Ctrl-j behavior
"not to mess with my window movements
let g:C_Ctrl_j='off'
nnoremap <C-j> <C-w>j
" inoremap <C-j> <C-w>j
" vnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"****************************************************** Toggle highlighted search matches

nnoremap <BS> :set hlsearch! hlsearch?<cr>

"****************************************************** Ag silver searcher

let g:agprg="ag --column"
let g:ackprg = 'ag\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow'
" if executable('ag')
"    set grepprg=ag\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow
"    set grepformat=%f:%l:%c:%m
"  endif

"***************************************************** Speed up vim

set ttyfast
set lazyredraw

"**************************************************** Typings
set scrolloff=7
set hlsearch
"set autoindent
"expand tabs to spaces
set expandtab
set incsearch

"**************************************************** File type specific
filetype on           " Enable filetype detection

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab

" autocmd FileType css,scss setlocal foldmethod=marker foldmarker={,} foldlevel=0
" autocmd FileType javascript setlocal foldmethod=syntax foldlevel=2
" autocmd BufNewFile,BufRead,BufWritePost *[Ss]pec.rb set filetype=ruby foldlevel=1
" autocmd FileType ruby setlocal foldmethod=syntax foldlevel=1
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
au BufNewFile,BufRead *.ejs set filetype=html


"**************************************************** Enable omni completion.

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"***************************************************** Fugitive
"status line
:set ls=2
:set statusline=%F%m%r%h%w\
:set statusline+=%{fugitive#statusline()}\
:set statusline+=[%{strlen(&fenc)?&fenc:&enc}]
:set statusline+=\ [line\ %l\/%L\/%c]
" :set statusline+=\[%{getcwd()}]\

"***************************************************** Copy/Paste System
"Copy with Ctrl+C
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>

"Clipboard
"Ubuntu
"vmap <C-c> :<Esc>`>a<CR><Esc>mx`<i<CR><Esc>my'xk$v'y!xclip -selection c<CR>u
"Paste with Ctrl+v
"map <Insert> :set paste<CR>i<CR><CR><Esc>k:.!xclip -o<CR>JxkJx:set nopaste<CR>
"OS X
"nmap <C-v> :call setreg("\"",system("pbpaste"))<CR>

"***************************************************** Slime/Edit tmux session
"from vim, good for pry
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"

"***************************************************** Rvm

" let g:ruby_path = system('rvm current')

"******************************************************JS Hint linter color

hi clear SpellBad
"hi SpellBad cterm=underline,bold ctermfg=white ctermbg=red
hi SpellBad cterm=underline,bold ctermfg=magenta

"******************************************************* Smooth scroll easymotion
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

"******************************************************* Back Up Swaps

" set backupdir=./.backup,.,/tmp
" set directory=.,./.backup,/tmp

"******************************************************* VIM Folding

" set foldenable
" set foldmethod=syntax
" set foldlevelstart=1
" set foldlevel=1

"******************************************************* GO Lang

"set runtimepath+=$GOROOT/misc/vim

"******************************************************  Spelling

" turn on the spell checking and set the English language
nmap <Leader>ss :setlocal spell spelllang=en_us<CR>
" turn on the spell checking and set the English language
nmap <Leader>so :setlocal nospell <CR>
" jump to the next bad spell word
nmap <Leader>sn ]s
" suggest words
nmap <Leader>sp z=
" jump to the next bad spell word and suggests a correct one
nmap <Leader>sc ]sz=
" add word to the dictionary
nmap <Leader>sa zg

" hi clear SpellBad
hi SpellBad cterm=underline

"Vim set local for current buffer
":setlocal spell spelllang=en_us
":set nospell
"z=  show options
"]s [s  next/prev misspelled word
"zg Add word to dictionary


"****************************************************** Text editing

" Autocompletion of (, [, {, ', ", ...
NeoBundle 'delimitMate.vim'
" Smart and fast date changer
NeoBundle 'tpope/vim-speeddating'
" to surround vim objects with a pair of identical chars
NeoBundle 'tpope/vim-surround'
" extend repetitions by the 'dot' key
NeoBundle 'tpope/vim-repeat'


"****************************************************** Commenting

NeoBundle 'tpope/vim-commentary'
nmap <Leader>c <Plug>CommentaryLine
xmap <Leader>c <Plug>Commentary

augroup plugin_commentary
    au!
    au FileType python setlocal commentstring=#%s
    au FileType htmldjango setlocal commentstring={#\ %s\ #}
    au FileType puppet setlocal commentstring=#\ %s
    au FileType xquery setlocal commentstring=(:\ %s\ :)
augroup END


"****************************************************** Random plugins
"TO LOOK INTO

" smart digraphs insertion
NeoBundle 'Rykka/easydigraph.vim'
" browse the vim undo tree
NeoBundleLazy 'sjl/gundo.vim', { 'autoload' : {'commands': 'GundoToggle'}}
" to insert lorem ipsum blocks
NeoBundleLazy 'vim-scripts/loremipsum', { 'autoload' :
            \ { 'commands' : 'Loremipsum'}}
" reveals all the character info, Unicode included
NeoBundle 'tpope/vim-characterize'
" transpose lines and text blocks
NeoBundleLazy 'salsifis/vim-transpose', { 'autoload' :
            \ { 'commands' : 'Transpose'}}
" marks admin
NeoBundle 'kshenoy/vim-signature'
" text-objects
NeoBundle 'kana/vim-textobj-entire' " ae, ie
NeoBundle 'kana/vim-textobj-indent' " ai, ii, aI, iI
NeoBundle 'kana/vim-textobj-lastpat' " a/, i/, a?, i?
NeoBundle 'kana/vim-textobj-line' " al, il
NeoBundle 'kana/vim-textobj-underscore' " a_, i_
NeoBundle 'kana/vim-textobj-user'

"****************************************************** Save as root

cmap w!! w !sudo tee % >/dev/null<CR>:e!<CR><CR>


"****************************************************** Vim shell
"Vim behaves line shell, recongizes shell aliases
" :set shellcmdflag=-ic

"****************************************************** Backspace on Os X
set backspace=indent,eol,start


"****************************************************** Set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>


"****************************************************** Keep cursor from more
"middleish
:set so=8

"****************************************************** Text formating
":set formatoptions+=t
":set tw=79
" gq on selection to reformat
" :set wrap linebreak nolist


"****************************************************** Move selected text
"with holding Ctrl + hjkl
" nnoremap <c-j> :m .+1<CR>==
" nnoremap <c-k> :m .-2<CR>==
" inoremap <c-j> <Esc>:m .+1<CR>==gi
" inoremap <c-k> <Esc>:m .-2<CR>==gi
" vnoremap <c-j> :m '>+1<CR>gv=gv
" vnoremap <c-k> :m '<-2<CR>gv=gv

"****************************************************** Auto paste mode toggle
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction


"****************************************************** Whitespace and stuff

set backspace=indent,eol,start                      "allow backspacing everything in insert mode
set autoindent                                      "automatically indent to match adjacent lines
set expandtab                                       "spaces instead of tabs
set smarttab                                        "use shiftwidth to enter tabs
let &tabstop=2              "number of spaces per tab for display
let &softtabstop=2          "number of spaces per tab in insert mode
let &shiftwidth=2           "number of spaces when indenting
set list                                            "highlight whitespace
set listchars=tab:│\ ,trail:•,extends:❯,precedes:❮
set shiftround
set linebreak
let &showbreak='↪ '

set scrolloff=1                                     "always show content after scroll
set scrolljump=5                                    "minimum number of lines to scroll
set display+=lastline
set wildmenu                                        "show list for autocomplete
set wildmode=list:full
" set wildignorecase
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store

set splitbelow
set splitright

"****************************************************** Custom Functions
"TODO: Add reference to source
function! Preserve(command)
  " preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " do the business:
  execute a:command
  " clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction "}}}

function! FixWhitespace() "{{{
  call Preserve("%s/\\s\\+$//e")
endfunction

"close window
function! CloseWindowOrKillBuffer()
  let number_of_windows_to_this_buffer = len(filter(range(1, winnr('$')), "winbufnr(v:val) == bufnr('%')"))

  " never bdelete a nerd tree
  if matchstr(expand("%"), 'NERD') == 'NERD'
    wincmd c
    return
  endif

  if number_of_windows_to_this_buffer > 1
    wincmd c
  else
    bdelete
  endif
endfunction

function! EnsureExists(path) "{{{
  if !isdirectory(expand(a:path))
    call mkdir(expand(a:path))
  endif
endfunction "}}}

"****************************************************** Save with control s + Fix any white space
:nmap <silent> <c-s> :w<CR> :call FixWhitespace()<CR>
:imap <silent> <c-s> <Esc>:w<CR>a :call FixWhitespace()<CR>
:imap <silent> <c-s> <Esc><c-s> :call FixWhitespace()<CR>
:vmap <silent> <c-s> <Esc>:w<CR>a :call FixWhitespace()<CR>
:vmap <silent> <c-s> <Esc><c-s> :call FixWhitespace()<CR>

"****************************************************** Auto reload files
:set autoread
:au CursorHold * checktime



" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>

"function! s:my_cr_function()
"  return neocomplete#smart_close_popup() . "\<CR>"
"  " For no inserting <CR> key.
"  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
"endfunction
"****************************************************** "Current" word in quote
nnoremap <Leader>" ciw"<C-r>""<Esc>
vnoremap <Leader>" c"<C-r>""<Esc>

nmap ,n :NERDTreeFind<CR>
nmap ,m :NERDTreeToggle<CR>

"****************************************************** Zooms a window

NeoBundleLazy 'vim-scripts/zoomwintab.vim', {'autoload' :
      \{'commands' : 'ZoomWinTabToggle'}}
:nmap <C-w>o :ZoomWinTabToggle<CR>

"****************************************************** VimShell

NeoBundleLazy 'Shougo/vimshell.vim', {'autoload':{'commands':[ 'VimShell', 'VimShellInteractive' ]}} "{{{
  " if s:is_macvim
  "   let g:vimshell_editor_command='mvim'
  " else
  "   let g:vimshell_editor_command='vim'
  " endif
    let g:vimshell_editor_command='vim'
  let g:vimshell_right_prompt='getcwd()'
  let g:vimshell_data_directory='~/.vim/.cache/vimshell'
  let g:vimshell_vimshrc_path='~/.vim/vimshrc'

  nnoremap <leader>c :VimShell -split<cr>
  nnoremap <leader>cc :VimShell -split<cr>
  " nnoremap <leader>cn :VimShellInteractive node<cr>
  " nnoremap <leader>cr :VimShellInteractive irb<cr>
  " nnoremap <leader>cl :VimShellInteractive lua<cr>
  "}}}
  " nnoremap <leader>cp :VimShellInteractive python<cr>

"****************************************************** Clean up fugitive
"buffers

if has("autocmd")
  autocmd BufReadPost fugitive://* set bufhidden=delete
endif


nnoremap <Leader><Space> :Goyo<CR>
imap <buffer><C-a> <Plug>(vimshell_history_neocomplete)

"****************************************************** RSpec
" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>

let g:rspec_command = "Dispatch bundle exec rspec {spec}"

"*************************************************** CtrlP
" let g:ctrlp_map = '<leader>l'

let g:ctrlp_switch_buffer='Et'
let g:ctrlp_show_hidden = 1

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(spec/tmp|git|tmp)$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }
" :nnoremap <Leader>f :CtrlPBuffer<CR>
"CtrlPBuffer
let g:ctrlp_cmd = 'CtrlP'


"************************************ random plugins

"NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"NeoBundle 'L9'

NeoBundleLazy 'mbbill/undotree', {'autoload':{'commands':'UndotreeToggle'}} "{{{
  let g:undotree_SplitLocation='botright'
  let g:undotree_SetFocusWhenToggle=1
  " nnoremap <silent> <F5> :UndotreeToggle<CR> "not working
"}}}

" vim file/folder management {{
" persistent undo
if exists('+undofile')
  set undofile
  set undodir=~/.vim/.cache/undo

  " backups
  set backup
  set backupdir=~/.vim/.cache/backup

  " swap files
  set directory=~/.vim/.cache/swap
  set noswapfile

  call EnsureExists('~/.vim/.cache')
  call EnsureExists(&undodir)
  call EnsureExists(&backupdir)
  call EnsureExists(&directory)

endif "}}

"************************************ WEB Development plugins

NeoBundleLazy 'groenewege/vim-less', {'autoload':{'filetypes':['less']}}
NeoBundleLazy 'cakebaker/scss-syntax.vim', {'autoload':{'filetypes':['scss','sass']}}
NeoBundleLazy 'hail2u/vim-css3-syntax', {'autoload':{'filetypes':['css','scss','sass']}}
NeoBundleLazy 'ap/vim-css-color', {'autoload':{'filetypes':['css','scss','sass','less','styl']}}
NeoBundleLazy 'othree/html5.vim', {'autoload':{'filetypes':['html']}}
NeoBundleLazy 'wavded/vim-stylus', {'autoload':{'filetypes':['styl']}}
NeoBundleLazy 'digitaltoad/vim-jade', {'autoload':{'filetypes':['jade']}}
NeoBundleLazy 'juvenn/mustache.vim', {'autoload':{'filetypes':['mustache']}}
NeoBundleLazy 'gregsexton/MatchTag', {'autoload':{'filetypes':['html','xml']}}
NeoBundleLazy 'mattn/emmet-vim', {'autoload':{'filetypes':['html','xml','xsl','xslt','xsd','css','sass','scss','less','mustache']}} "{{{

function! s:zen_html_tab()
 let line = getline('.')
 if match(line, '<.*>') < 0
   return "\<c-y>,"
 endif
 return "\<c-y>n"
endfunction
" autocmd FileType xml,xsl,xslt,xsd,css,sass,scss,less,mustache imap <buffer><tab> <c-y>,
" autocmd FileType html imap <buffer><expr><tab> <sid>zen_html_tab()


"hack to avoid C-j to toggle insert mode
:autocmd BufRead * nnoremap <C-j> <C-w>j


"Set the thickness in vertical split
"set fillchars+=vert:\|
"hi! VertSplit ctermfg=[yourFG] ctermbg=[YourBG] term=NONE

"******************************************************  vim-operator-surround
"NOT WORKING YET :-(
" operator mappings
" map <silent>sa <Plug>(operator-surround-append)
" map <silent>sd <Plug>(operator-surround-delete)
" map <silent>sr <Plug>(operator-surround-replace)

" delete or replace most inner surround

" if you use vim-textobj-multiblock
" nmap <silent>sdd <Plug>(operator-surround-delete)<Plug>(textobj-multiblock-a)
" nmap <silent>srr <Plug>(operator-surround-replace)<Plug>(textobj-multiblock-a)

" if you use vim-textobj-anyblock
" nmap <silent>sdd <Plug>(operator-surround-delete)<Plug>(textobj-anyblock-a)
" nmap <silent>srr <Plug>(operator-surround-replace)<Plug>(textobj-anyblock-a)

" if you use vim-textobj-between
" nmap <silent>sdb <Plug>(operator-surround-delete)<Plug>(textobj-between-a)
" nmap <silent>srb <Plug>(operator-surround-replace)<Plug>(textobj-between-a)

NeoBundle 'tpope/vim-bundler'

"************************************ Check if any new plugins (KEEP LAST)
NeoBundleCheck



" allow quit via single keypress (Q)
map XX :qa<CR>
