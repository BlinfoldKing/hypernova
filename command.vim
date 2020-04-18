let g:lmap =  {}

let g:lmap.f = { 'name' : 'File Menu' }
let g:lmap.q = [ 'quit', 'Quit Buffer' ]

nmap <silent> <leader>fd :e $MYVIMRC<CR>
let g:lmap.f.d = ['e $MYVIMRC', 'Open vimrc']

nmap <silent> <leader>fs :so %<CR>
let g:lmap.f.s = ['so %', 'Source file']

nmap <silent> <leader>fw :w<CR>
let g:lmap.f.w = ['w', 'Write file']

let g:lmap.h = { 'name' : 'Git Gutter' }

let g:lmap.g = {
            \'name' : 'Git Menu',
            \'v': ['Gitv', 'Git Visualizer'],
            \'s': ['Gstatus', 'Git Status'],
            \'p': ['Gpull',   'Git Pull'],
            \'u': ['Gpush',   'Git Push'],
            \'c': ['Gcommit', 'Git Commit'],
            \'w': ['Gwrite',  'Git Write'],
            \'b': ['Gblame',  'Git Blame'],
            \}

let g:lmap.w = {
            \'name': 'Window Menu',
            \'w': ['InteractiveWindow', 'interactive window'],
            \'s': ['split', 'Split horizontaly'],
            \'v': ['vsplit', 'Split verticaly'],
            \'W': ['Windows', 'find window'],
            \'p': ['call g:Present()', 'presentation mode'],
            \'j': ['ChooseWin', 'jump to window'],
            \}

let g:lmap.e = {
            \'name': 'Editor Menu',
            \'t': ['15Term', 'Open Terminal'],
            \'f': ['Files', 'Find File'],
            \'r': ['call g:ToggleNuMode()', 'Toogle relative numbering'],
            \'c': ['Colors', 'change colorscheme']
            \}

let g:lmap.e.n =  {
            \'name': 'NerdTree',
            \'o': ['NERDTreeFocus', 'Open  NerdTree'],
            \'c': ['NERDTreeClose', 'Close NerdTree']
            \}

let g:lmap.e.b =  {
            \'name': 'TagBar',
            \'o': ['Tagbar', 'Open Tagbar'],
            \'c': ['TagBarClose', 'Close Tagbar']
            \}

call leaderGuide#register_prefix_descriptions('\', 'g:lmap')
nnoremap <silent> <leader> :LeaderGuide '\'  <CR>
vnoremap <silent> <leader> :LeaderGuideVisual '\'  <CR>


function! g:ToggleNuMode()
    if &relativenumber == 1
        set norelativenumber
    else
        set relativenumber
    endif
endfunction

function! g:LightMode()
    set background="light"
    colorscheme Papercolor
endfunction

function! g:Present()
    :Goyo
    :Limelight!!
endfunction

nnoremap <silent><C-L> :call g:ToggleNuMode()<cr>

nmap  -  <Plug>(choosewin)
let g:choosewin_overlay_enable = 1

nnoremap <F5> :call LanguageClient_contextMenu()<CR>

map <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
nnoremap tt :NERDTreeToggle<CR>
inoremap ;; <Esc>
nnoremap <silent><C-P> :Files <cr>

