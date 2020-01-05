" =============================================================================
" Filename: autoload/lightline/colorscheme/yami.vim
" Author: danishprakash
" License: MIT License
" =============================================================================

let s:white        = [ '#d0d0d0' , 252 ]
let s:gray         = [ '#23242a' , 242 ]
let s:lightgray    = [ '#666666' , 245 ]
let s:yellow       = [ '#1c1c24' , 221 ]
let s:red          = [ '#23242a' , 161 ]
let s:orange       = [ '#ec8f6a' , 202 ]

let s:p = {
    \ 'normal': {},
    \ 'inactive': {},
    \ 'insert': {},
    \ 'replace': {},
    \ 'visual': {},
    \ 'tabline': {}
    \ }

let s:p.normal.left     = [[ s:gray, s:white ], [ s:white, s:gray ]]
let s:p.normal.right    = [[ s:white, s:gray ], [ s:white, s:gray ]]
let s:p.insert.left     = [[ s:gray, s:white ], [ s:white, s:gray ]]
let s:p.visual.left     = [[ s:gray, s:white ], [ s:white, s:gray ]]
let s:p.replace.left    = [[ s:gray, s:white ], [ s:white, s:gray ]]

let s:p.inactive.right  = [[ s:lightgray, s:gray ], [ s:gray, s:gray ]]
let s:p.inactive.left   = [[ s:lightgray, s:gray ], [ s:gray, s:gray ]]
let s:p.inactive.middle = [[ s:lightgray, s:gray ]]

let s:p.normal.middle   = [[ s:lightgray,  s:gray  ]]
let s:p.normal.error    = [[ s:red,    s:gray  ]]
let s:p.normal.warning  = [[ s:orange, s:gray  ]]

let s:p.tabline.left    = [[ s:lightgray, s:gray ]]
let s:p.tabline.tabsel  = [[ s:gray, s:yellow    ]]
let s:p.tabline.middle  = [[ s:yellow, s:gray    ]]


let g:lightline#colorscheme#yami#palette = lightline#colorscheme#flatten(s:p)
