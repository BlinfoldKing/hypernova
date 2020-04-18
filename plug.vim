call plug#begin('~/.vim/plugged')
    Plug 'rhysd/reply.vim', { 'on': ['Repl', 'ReplAuto'] }
    Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
    Plug 'fatih/vim-go'
    Plug 'evanleck/vim-svelte'
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    Plug 'liuchengxu/vista.vim'
    Plug 'mxw/vim-prolog'
    Plug 'edkolev/tmuxline.vim'
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'Shougo/neosnippet'
    Plug 'Shougo/neosnippet-snippets'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'sainnhe/gruvbox-material'
    Plug 'leafgarland/typescript-vim'
    Plug 'chrisbra/Colorizer'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'morhetz/gruvbox'
    Plug 'ajmwagar/vim-deus'
    Plug 'hecal3/vim-leader-guide'
    Plug 'majutsushi/tagbar'
    Plug 'dense-analysis/ale'
    Plug 'pangloss/vim-javascript'
    Plug 'jzelinskie/monokai-soda.vim'
    Plug 'dunckr/vim-monokai-soda'
    Plug 'mxw/vim-jsx'
    Plug 'rhysd/vim-clang-format'
    Plug 'tpope/vim-commentary'
    Plug 'ervandew/supertab'
    Plug 'vim-scripts/sudo.vim'
    Plug 'jamshedvesuna/vim-markdown-preview'
    Plug 'ryanoasis/vim-devicons'
    Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'scrooloose/nerdtree'
    Plug 'vimlab/split-term.vim'
    Plug 'mattn/emmet-vim'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'vim-airline/vim-airline'
    Plug 'airblade/vim-gitgutter'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'joshdick/onedark.vim'
    Plug 'raimondi/delimitmate'
    Plug 'easymotion/vim-easymotion'
    Plug 'tpope/vim-fugitive'
    Plug 'mhinz/vim-startify'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
    Plug 'junegunn/fzf.vim'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'junegunn/limelight.vim'
    Plug 'junegunn/goyo.vim'
    Plug 'gregsexton/gitv', {'on': ['Gitv']}
    Plug 'terryma/vim-multiple-cursors'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 't9md/vim-choosewin'
    Plug 'romgrk/winteract.vim'
    Plug 'kaicataldo/material.vim'
    Plug 'sonph/onehalf', {'rtp': 'vim/'}
    Plug 'jacoborus/tender.vim'
    Plug 'junegunn/vim-easy-align'
    Plug 'jparise/vim-graphql'
    Plug 'prettier/vim-prettier', {
            \ 'do': 'npm install',
            \ 'branch': 'release/1.x',
            \ 'for': [
            \ 'javascript',
            \ 'typescript',
            \ 'css',
            \ 'less',
            \ 'scss',
            \ 'json',
            \ 'graphql',
            \ 'markdown',
            \ 'vue',
            \ 'lua',
            \ 'php',
            \ 'python',
            \ 'ruby',
            \ 'html',
            \ 'swift' ] }
call plug#end()
