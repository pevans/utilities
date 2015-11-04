" Setting up pathogen
execute pathogen#infect()

" Use whatever source code font you prefer
"set guifont=Inconsolata:h24
set guifont=M+\ 1m\ light:h24

" I'm assuming that solarized is installed
colo solarized

" By default use the dark background theme for solarized.
set background=dark

" This looks better to me
let g:solarized_contrast = "low"

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
set laststatus=2

" Show the file and syntax type on the left; show the pct in the file, the line and
" column number on the right.
set statusline=%{fugitive#statusline()}\ %F\ %y%=[%P]\ L:%l\ C:%c

" How to work with this file
map ,rc :e ~/.vimrc<CR>
map ,so :so ~/.vimrc<CR>

" If you're out and about, and the sun is shining on your screen, then maybe
" the light background version of solarized looks better than the dark one.
map <F3> :set background=dark<CR>
map <F4> :set background=light<CR>

" Look for the next chunk of a conflict. Bonus: once you use ,nc, you can
" just hit 'n' to repeat the search.
map ,nc /<<<<<<\\|======\\|>>>>>><CR>

" Clear out any past search term
map <F2> :let @/ = ""<CR>

" Quick filetype sets, for times when you want to open
" a new buffer but not necessarily save it to a file.
map ,ft :setl ft=text<CR>
map ,fg :setl ft=go<CR>
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
au BufNewFile,BufRead *.md setl ft=markdown
au BufNewFile,BufRead *.mustache setl ft=html
au BufNewFile,BufRead *.hbs setl ft=html
au FileType php,javascript setl comments^=:///

" Let the go formatter also try to figure out what our imports should be
let g:go_fmt_command = "goimports"

" And off we go.
syn on
filet plugin indent on

" Some stuff doesn't need to be in the main rc file--specific shortcuts for
" me and so forth.
so ~/vimrc-extra.vim
