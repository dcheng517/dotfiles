execute pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Windows colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme slate
:set guifont=Fixedsys:h11


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set number
:set hidden
:set backspace=indent,eol,start
:set copyindent
:set shiftwidth=4
:set smarttab
:set title
:set mouse=a
:nnoremap ; :
:set expandtab
:set showmatch
:syntax on
:set tabstop=4
:set softtabstop=4
:set tw=0
:set smartindent
:set mouse=a	
:set wildmode=longest,list,full
:set t_Co=256
:set mousemodel=extend
:set incsearch
:set hlsearch
highlight Search guibg=green guifg=black
highlight Cursor guibg=red guifg=black 
:set smartcase
:set ignorecase
:set nocp
filetype plugin on
:set guioptions+=k


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Navigation in Insert && Command mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nnoremap <C-S-F> :g/<CR>
" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>
" Press F8 to highlight all occurences of current word
:nnoremap <F8> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
" Press // in Visual Mode to search for current highlighted word
:vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Swithcing windows
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nnoremap <F5> :buffers<CR>:buffer<Space>
:nnoremap <C-F5> :buffers<CR>:buffer<Space>
:nnoremap <C-Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>
":nnoremap <C-w> :bd<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Splits
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-k> <C-W>j
map <C-i> <C-W>k
map <C-j> <C-W>h
map <C-l> <C-W>l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocomplete && autoindent braces
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F2> :NERDTreeToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" IndentGuide
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EasyMotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1
nmap <Space> <Plug>(easymotion-overwin-f)
map J <Plug>(easymotion-j)
map K <Plug>(easymotion-k)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" copy/paste to system clipboard
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:vnoremap <y> "+y 
:nnoremap <p> "+gP
set pastetoggle=<F3>
set clipboard=unnamed


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func! WordProcessorMode()
    setlocal textwidth=80
		setlocal smartindent
		setlocal spell spelllang=en_us
		setlocal noexpandtab
endfu


