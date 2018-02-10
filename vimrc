" Setting up pathogen
execute pathogen#infect()

" Use whatever source code font you prefer
"set guifont=Inconsolata:h24
"set guifont=M+\ 1m:h30
"set guifont=Anonymous\ Pro:h30
"set guifont=Fira\ Mono:h24
"set guifont=Envy\ Code\ R:h30
"set guifont=Hermit\ Light:h24
"set guifont=Edlo:h26
"set guifont=Go\ Mono:h30
"set guifont=Hack:h30
"set guifont=IBM\ Plex\ Mono\ Light:h30
set guifont=Input\ Mono\ Compressed:h25
"set guifont=Input\ Mono:h25

set gcr+=a:blinkon0

set antialias

" I'm assuming that solarized is installed
colo solarized

" By default use the dark background theme for solarized.
set background=dark

" Fun with MacVim
"if has("gui_macvim")
"	set transparency=10
"	set blur=20
"endif

" This looks better to me
let g:solarized_contrast = "high"

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

let mapleader = ","

" How to work with this file
map <leader>rc :e ~/.vimrc<CR>
map <leader>so :so ~/.vimrc<CR>

" If you're out and about, and the sun is shining on your screen, then maybe
" the light background version of solarized looks better than the dark one.
map <F3> :set background=dark<CR>
map <F4> :set background=light<CR>

" Look for the next chunk of a conflict. Bonus: once you use ,nc, you can
" just hit 'n' to repeat the search.
map <leader>nc /<<<<<<\\|======\\|>>>>>><CR>

" Clear out any past search term
map <F2> :let @/ = ""<CR>

map <D-o> :NERDTree<CR><C-w>l:NERDTreeFind<CR>

map <leader>o :NERDTree ~/ac/

" Quick filetype sets, for times when you want to open
" a new buffer but not necessarily save it to a file.
map <leader>ft :setl ft=text<CR>
map <leader>fg :setl ft=go<CR>
map <leader>fm :setl ft=markdown<CR>
map <leader>fs :setl ft=sql<CR>
map <leader>fp :setl ft=php<CR>
map <leader>fh :setl ft=html<CR>
map <leader>fx :setl ft=xml<CR>
map <leader>fj :setl ft=javascript<CR>

map <leader>pf :call PhpCsFixerFixFile()<CR>

" We're assuming tabularize is installed
map <leader>t= :Tabularize/=<CR>
map <leader>t: :Tabularize/:<CR>
map <leader>t> :Tabularize/=><CR>
map <leader>t/ :Tabularize/\/\/<CR>
map <leader>t, :Tabularize/,<CR>

" I wasn't really using these anyway
map ` :tabp<CR>
map - :tabn<CR>

" Set up some auto behavior
au FileType text,markdown setl tw=72 fo=t
au BufNewFile,BufRead *.md setl ft=markdown
au BufNewFile,BufRead *.mustache setl ft=html
au BufNewFile,BufRead *.hbs setl ft=html
au FileType php,javascript setl comments^=:/// tw=72 fo=corqj et
au FileType html setl tw=72 sw=2
au FileType sh setl tw=72 fo=corqj
au FileType go setl fo=corqj tw=72
au FileType terraform setl tw=72 fo=corqj
au FileType ruby setl tw=72 fo=corqj
au FileType c,cpp setl tw=72 fo=corqj et cin cino=(0,W4
"au BufWritePost *.php call PhpCsFixerFixFile()

" Let the go formatter also try to figure out what our imports should be
let g:go_fmt_command = "goimports"

" I like pretty, contrasting colors
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_types = 1

" php-cs-fixer
let g:php_cs_fixer_rules = "@PSR2"

" And off we go.
syn on
filet plugin indent on

" Some stuff doesn't need to be in the main rc file--specific shortcuts for
" me and so forth.
so ~/vimrc-extra.vim

" leave me be
let g:go_version_warning = 0

" I like linting on saving, but not on just text changes.
let g:ale_lint_on_text_changed = "never"
