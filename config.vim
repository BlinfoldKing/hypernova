set hidden
set number
set relativenumber
set cursorline
set splitbelow
set splitright
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set mouse=a
set colorcolumn=80
set background=dark
set t_Co=256
set encoding=UTF-8
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
set t_ZH=^[[3m
set t_ZR=^[[23m
syntax on

colorscheme palenight

"" beter whitespace
let g:better_whitespace_enabled=1

"" editor config
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

let g:dracula_termcolors=256
let g:onedark_terminal_italics=1
let g:palenight_terminal_italics=1
let g:gruvbox_italic=1

"" deoplete
let deoplete#enable_at_startup = 1

"" true color support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif


"" ale config
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'rust': ['cargo'],
\}


let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'scss': ['prettier'],
\    'rust': ['rustfmt']
\}

"" prettier
let g:prettier#autoformat = 1
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier

"" powerline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1

"" highlight
hi Normal guibg=NONE ctermbg=NONE
highlight Comment cterm=italic gui=italic
highlight Function cterm=italic gui=italic

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

"" language server
set hidden
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['flow', 'lsp'],
    \ 'javascript.jsx': ['flow', 'lsp'],
    \ 'python': ['~/.local/bin/pyls'],
    \ 'python3': ['~/.local/bin/pyls'],
    \ }
autocmd BufWritePre *.go,*.rs :call LanguageClient#textDocument_formatting_sync()


au FileType perl set filetype=prolog

let g:vista_default_executive = 'nvim_lsp'

let g:javascript_plugin_flow = 1

let g:reply_repls = {
\   'prolog': ['swipl']
\ }
