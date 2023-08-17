call plug#begin(stdpath('data') . '/plugged')

Plug 'junegunn/seoul256.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/limelight.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'prabirshrestha/vim-lsp'
" Plug 'github/copilot.vim'

call plug#end()

colorscheme seoul256
set nu

if executable('standardrb')
	au User lsp_setup call lsp#register_server({
		\ 'name': 'standardrb',
		\ 'cmd': ['standardrb', '--lsp'],
		\ 'allowlist': ['ruby'],
		\ })
endif

if executable('solargraph')
	au User lsp_setup call lsp#register_server({
		\ 'name': 'solargraph',
		\ 'cmd': ['solargraph', 'stdio'],
		\ 'allowlist': ['ruby'],
		\ })
endif

