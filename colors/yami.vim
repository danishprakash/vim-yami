" vim:fdm=marker:foldlevel=0
"
"   _   _  __ _ _ __ ___  _ 
"  | | | |/ _` | '_ ` _ \| |
"  | |_| | (_| | | | | | | |
"   \__, |\__,_|_| |_| |_|_|
"    __/ |                  
"   |___/                   
" 
" Monochrome dark(闇) theme for Vim


" Setup
set background=dark
highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "yami"


" Color palette
let s:lime   = "#d6ebc7"
let s:light  = "#d4d4d5"
let s:dark   = "#18151c"
let s:gray0  = "#666666"
let s:gray1  = "#323232"
let s:gray2  = "#23242a"
let s:gray3  = "#2b2b2b"
let s:yellow = "#ffe59e"
let s:blue   = "#52de97"
let s:green  = "#79dcaa"
let s:red    = "#f87070"


" Highlight helper function
function! s:HL(item, fgColor, bgColor, style)
	let command  = 'hi ' . a:item
	let command .= ' ' . 'gui' . 'fg=' . a:fgColor
	let command .= ' ' . 'gui' . 'bg=' . a:bgColor
	let command .= ' ' . 'gui' . '=' . a:style
	execute command
endfunction


" Primitives
call s:HL('String'      , s:lime  , 'NONE' , 'NONE' )
call s:HL('Number'      , s:light , 'NONE' , 'NONE' )
call s:HL('Boolean'     , s:light , 'NONE' , 'NONE' )
call s:HL('Float'       , s:light , 'NONE' , 'NONE' )
call s:HL('Constant'    , s:light , 'NONE' , 'NONE' )
call s:HL('Character'   , s:light , 'NONE' , 'NONE' )
call s:HL('SpecialChar' , s:light , 'NONE' , 'NONE' )

" Specials
call s:HL('Title'          , s:gray0  , 'NONE' , 'NONE' )
call s:HL('Todo'           , s:yellow , 'NONE' , 'NONE' )
call s:HL('Comment'        , s:gray0  , 'NONE' , 'NONE' )
call s:HL('SpecialComment' , s:gray0  , 'NONE' , 'NONE' )

" Lines                  , Columns
call s:HL('LineNr'       , s:gray0 , 'NONE'  , 'NONE' )
call s:HL('CursorLine'   , 'NONE'  , s:gray3 , 'NONE' )
call s:HL('CursorLineNr' , s:light , s:gray3, 'NONE'  )
call s:HL('SignColumn'   , s:gray3 , s:dark  , 'NONE' )
call s:HL('ColorColumn'  , s:light , s:gray3 , 'NONE' )
call s:HL('CursorColumn' , s:light , s:gray3 , 'NONE' )

" Visual
call s:HL('Visual'    , 'NONE'   , s:gray1 , 'NONE' )
call s:HL('VisualNOS' , s:gray3  , s:light , 'NONE' )
call s:HL('Search'    , s:yellow , s:gray0 , 'NONE' )
call s:HL('IncSearch' , s:yellow , s:gray0 , 'NONE' )

" Spelling
call s:HL('SpellBad'   , s:red , s:dark , 'NONE' )
call s:HL('SpellCap'   , s:red , s:dark , 'NONE' )
call s:HL('SpellLocal' , s:red , s:dark , 'NONE' )
call s:HL('SpellRare'  , s:red , s:dark , 'NONE' )

" Messages
call s:HL('ErrorMsg'   , s:red    , s:dark , 'NONE' )
call s:HL('WarningMsg' , s:yellow , s:dark , 'NONE' )
call s:HL('ModeMsg'    , s:light  , s:dark , 'NONE' )
call s:HL('MoreMsg'    , s:light  , s:dark , 'NONE' )
call s:HL('Error'      , s:red    , s:dark , 'NONE' )

" Preprocessor Directives
call s:HL('Include'		  , s:light	, 'NONE', 'NONE' )
call s:HL('Define'		  , s:light	, 'NONE', 'NONE' )
call s:HL('Macro'		  , s:light	, 'NONE', 'NONE' )
call s:HL('PreCondit'	  , s:light	, 'NONE', 'NONE' )
call s:HL('PreProc'		  , s:light	, 'NONE', 'NONE' )

" Bindings
call s:HL('Identifier'	  , s:light	, 'NONE', 'NONE' )
call s:HL('Function'	  , s:light	, 'NONE', 'NONE' )
call s:HL('Keyword'		  , s:light	, 'NONE', 'NONE' )
call s:HL('Operator'	  , s:light	, 'NONE', 'NONE' )

" Types
call s:HL('Type'		  , s:light	, 'NONE', 'NONE' )
call s:HL('Typedef'	  	  , s:light	, 'NONE', 'NONE' )
call s:HL('StorageClass'  , s:light	, 'NONE', 'NONE' )
call s:HL('Structure'	  , s:light	, 'NONE', 'NONE' )

" Flow Control
call s:HL('Statement'	  , s:light	, 'NONE', 'NONE' )
call s:HL('Conditional'	  , s:light	, 'NONE', 'NONE' )
call s:HL('Repeat'		  , s:light	, 'NONE', 'NONE' )
call s:HL('Label'		  , s:light	, 'NONE', 'NONE' )
call s:HL('Exception'	  , s:light	, 'NONE', 'NONE' )

" Misc
call s:HL('Normal'     , s:light , s:dark  , 'NONE'      )
call s:HL('Cursor'     , s:dark  , s:light , 'NONE'      )
call s:HL('Underlined' , s:light , 'NONE'  , 'underline' )
call s:HL('SpecialKey' , s:light , 'NONE'  , 'NONE'      )
call s:HL('NonText'    , s:light , 'NONE'  , 'NONE'      )
call s:HL('Directory'  , s:light , 'NONE'  , 'NONE'      )

" Fold
call s:HL('FoldColumn'	  , s:light, s:gray3 , 'NONE' )
call s:HL('Folded'		  , s:light, s:gray3 , 'NONE' )

" Parens
call s:HL('MatchParen'	  , s:dark, s:light , 'NONE' )

" Popup Menu
call s:HL('Pmenu'      , s:light , s:gray1 , 'NONE' )
call s:HL('PmenuSbar'  , s:dark  , s:gray3 , 'NONE' )
call s:HL('PmenuSel'   , s:dark  , s:light , 'NONE' )
call s:HL('PmenuThumb' , s:dark  , s:light , 'NONE' )

" Split
call s:HL('VertSplit'	  , s:gray1, s:dark , 'bold' )

" Others
call s:HL('Debug'        , s:light , 'NONE'  , 'NONE' )
call s:HL('Delimiter'    , s:light , 'NONE'  , 'NONE' )
call s:HL('Question'     , s:light , 'NONE'  , 'NONE' )
call s:HL('Special'      , s:light , 'NONE'  , 'NONE' )
call s:HL('StatusLine'   , s:light , s:gray2 , 'NONE' )
call s:HL('StatusLineNC' , s:light , s:gray2 , 'NONE' )
call s:HL('Tag'          , s:light , 'NONE'  , 'NONE' )
call s:HL('WildMenu'     , s:dark  , s:light , 'NONE' )
call s:HL('TabLine'      , s:light , s:gray2 , 'NONE' )

" Diff
call s:HL('DiffAdd'    , s:green  , 'NONE' , 'NONE' )
call s:HL('DiffChange' , s:yellow , 'NONE' , 'NONE' )
call s:HL('DiffDelete' , s:red    , 'NONE' , 'NONE' )
call s:HL('DiffText'   , s:dark   , 'NONE' , 'NONE' )

" GitGutter
call s:HL('GitGutterAdd'          , s:green  , 'NONE' , 'NONE' )
call s:HL('GitGutterChange'       , s:yellow , 'NONE' , 'NONE' )
call s:HL('GitGutterDelete'       , s:red    , 'NONE' , 'NONE' )
call s:HL('GitGutterChangeDelete' , s:dark   , 'NONE' , 'NONE' )

" Vimscript
call s:HL('vimFunc'          , s:light , 'NONE' , 'NONE' )
call s:HL('vimUserFunc'      , s:light , 'NONE' , 'NONE' )
call s:HL('vimLineComment'   , s:gray0 , 'NONE' , 'NONE' )
call s:HL('vimCommentString' , s:gray0 , 'NONE' , 'NONE' )

" NERDTree
call s:HL('NERDTreeCWD'            , s:gray1 , 'NONE' , 'NONE' )
call s:HL('NERDTreeFile'           , s:light , 'NONE' , 'NONE' )
call s:HL('NERDTreeNodeDelimiters' , s:light , 'NONE' , 'NONE' )


" FZF
call s:HL('fzf1' , s:light , s:gray2 , 'NONE' )
call s:HL('fzf2' , s:light , s:gray2 , 'NONE' )
call s:HL('fzf3' , s:light , s:gray2 , 'NONE' )
