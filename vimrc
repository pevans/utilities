" Setting up pathogen
execute pathogen#infect()

" Use whatever source code font you prefer
"set guifont=Inconsolata:h24
set guifont=M+\ 1m\ light:h24

" I'm assuming that solarized is installed
colo solarized
set background=dark

" Default tab label is 'Filename (status)'
set guitablabel=%t\ %m
set showtabline=2

" Some other config settings.
set nowrap
set ruler
set hls
set incsearch
set backspace=indent,eol,start
set noexpandtab
set shiftwidth=4
set tabstop=4

" Mappings!
map ,rc :e ~/.vimrc<CR>
map ,so :so ~/.vimrc<CR>

" Look for the next chunk of a conflict. Bonus: once you use ,nc, you can
" just hit 'n' to repeat the search.
map ,nc /<<<<<<\\|======\\|>>>>>><CR>

" Clear out any past search term
map <F2> :let @/ = ""<CR>

" Quick filetype sets, for times when you want to open
" a new buffer but not necessarily save it to a file.
map ,ft :setl ft=text<CR>
map ,fm :setl ft=markdown<CR>
map ,fs :setl ft=sql<CR>
map ,fp :setl ft=php<CR>
map ,fh :setl ft=html<CR>
map ,fx :setl ft=xml<CR>
map ,fj :setl ft=javascript<CR>

" We're assuming tabularize is installed
map ,t= :Tabularize/=<CR>
map ,t: :Tabularize/:<CR>
map ,t> :Tabularize/=><CR>
map ,t/ :Tabularize/\/\/<CR>
map ,t, :Tabularize/,<CR>

" I wasn't really using these anyway
map ` :tabp<CR>
map - :tabn<CR>

" Set up some auto behavior
au FileType text,markdown setl tw=80

" And off we go.
syn on
filet plugin indent on
