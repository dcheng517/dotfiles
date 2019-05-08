execute pathogen#infect()

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
set wildmode=longest,list,full
:set t_Co=256

"swithcing windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"Buffers
:nnoremap <F5> :buffers<CR>:buffer<Space>
:nnoremap <C-F5> :buffers<CR>:buffer<Space>
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>
":nnoremap <C-w> :bd<CR>

"Splits
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"autocomplete && autoindent braces
"inoremap ( ()<left>
"inoremap [ []<left>
inoremap {<CR> {<CR>}<Esc>ko
"let g:indent_guides_enable_on_vim_startup=1
":set ts=4 sw=4 et

"C++ compile
set autowrite
nnoremap <M-F5> :!g++ -std=c++11 % -Wall -g -o %.out && ./%.out<CR>

"NERDTree
map <F2> :NERDTreeToggle<CR>

"IndentGuide
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

"EasyMotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1
nmap <Space> <Plug>(easymotion-overwin-f)
map J <Plug>(easymotion-j)
map K <Plug>(easymotion-k)

"vim-javascript
let g:javascript_plugin_jsdoc = 1

"vim-airline
let g:airline#extensions#tabline#enabled = 1

"copy/paste to system clipboard
:vnoremap <y> "+y 
:nnoremap <p> "+p
set pastetoggle=<F3>
set clipboard=unnamedplus

func! WordProcessorMode()
    setlocal textwidth=80
		setlocal smartindent
		setlocal spell spelllang=en_us
		setlocal noexpandtab
endfu

