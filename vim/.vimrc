"Deal with paste and tabs issue
	nnoremap <F2> :set invpaste paste?<CR>
	set pastetoggle=<F2>

"Basics
	set nocompatible
	set showmode
	set number
	set relativenumber
	set background=dark
	filetype plugin indent on
	syntax on

"Splits at bottom and right
	set splitbelow
	set splitright

"Key Mappings
"jj to Esc
	inoremap jj <Esc>
	
"Replace all is aliased to S
	nnoremap S :%s//g<Left><Left>

"Spellcheck set to F6
	map <F6> :setlocal spell! spelllang=en_gb<CR>

"Compile latex document
	autocmd FileType tex inoremap <F5> <Esc>:!pdflatex<space>%<Enter>a
	autocmd FileType tex nnoremap <F5> :!pdflatex<space>%<Enter>

"Templates
if has("autocmd")
	augroup templates
		autocmd BufNewFile *.* silent! execute '0r ~/.vim/templates/skeleton.'.expand("<afile>:e")
		"autocmd BufNewFile *.sh 0r ~/.vim/templates/skeleton.sh
		"autocmd BufNewFile *.tex 0r ~/.vim/templates/skeleton.tex
	augroup END
endif

