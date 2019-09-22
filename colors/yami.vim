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
call s:HL('String'      , s:lime  , 'none' , 'none' )
call s:HL('Number'      , s:light , 'none' , 'none' )
call s:HL('Boolean'     , s:light , 'none' , 'none' )
call s:HL('Float'       , s:light , 'none' , 'none' )
call s:HL('Constant'    , s:light , 'none' , 'none' )
call s:HL('Character'   , s:light , 'none' , 'none' )
call s:HL('SpecialChar' , s:light , 'none' , 'none' )

" Specials
call s:HL('Title'          , s:gray0  , 'none' , 'none' )
call s:HL('Todo'           , s:yellow , 'none' , 'none' )
call s:HL('Comment'        , s:gray0  , 'none' , 'none' )
call s:HL('SpecialComment' , s:gray0  , 'none' , 'none' )

" Lines                  , Columns
call s:HL('LineNr'       , s:gray0 , 'none'  , 'none' )
call s:HL('CursorLine'   , 'none'  , s:gray3 , 'none' )
call s:HL('CursorLineNr' , s:light , s:gray3, 'none'  )
call s:HL('SignColumn'   , s:gray3 , s:dark  , 'none' )
call s:HL('ColorColumn'  , s:light , s:gray3 , 'none' )
call s:HL('CursorColumn' , s:light , s:gray3 , 'none' )

" Visual
call s:HL('Visual'    , 'none'   , s:gray1 , 'none' )
call s:HL('VisualNOS' , s:gray3  , s:light , 'none' )
call s:HL('Search'    , s:yellow , s:gray0 , 'none' )
call s:HL('IncSearch' , s:yellow , s:gray0 , 'none' )

" Spelling
call s:HL('SpellBad'   , s:red , s:dark , 'none' )
call s:HL('SpellCap'   , s:red , s:dark , 'none' )
call s:HL('SpellLocal' , s:red , s:dark , 'none' )
call s:HL('SpellRare'  , s:red , s:dark , 'none' )

" Messages
call s:HL('ErrorMsg'   , s:red    , s:dark , 'none' )
call s:HL('WarningMsg' , s:yellow , s:dark , 'none' )
call s:HL('ModeMsg'    , s:light  , s:dark , 'none' )
call s:HL('MoreMsg'    , s:light  , s:dark , 'none' )
call s:HL('Error'      , s:red    , s:dark , 'none' )

" Preprocessor Directives
call s:HL('Include'		  , s:light	, 'none', 'none' )
call s:HL('Define'		  , s:light	, 'none', 'none' )
call s:HL('Macro'		  , s:light	, 'none', 'none' )
call s:HL('PreCondit'	  , s:light	, 'none', 'none' )
call s:HL('PreProc'		  , s:light	, 'none', 'none' )

" Bindings
call s:HL('Identifier'	  , s:light	, 'none', 'none' )
call s:HL('Function'	  , s:light	, 'none', 'none' )
call s:HL('Keyword'		  , s:light	, 'none', 'none' )
call s:HL('Operator'	  , s:light	, 'none', 'none' )

" Types
call s:HL('Type'		  , s:light	, 'none', 'none' )
call s:HL('Typedef'	  	  , s:light	, 'none', 'none' )
call s:HL('StorageClass'  , s:light	, 'none', 'none' )
call s:HL('Structure'	  , s:light	, 'none', 'none' )

" Flow Control
call s:HL('Statement'	  , s:light	, 'none', 'none' )
call s:HL('Conditional'	  , s:light	, 'none', 'none' )
call s:HL('Repeat'		  , s:light	, 'none', 'none' )
call s:HL('Label'		  , s:light	, 'none', 'none' )
call s:HL('Exception'	  , s:light	, 'none', 'none' )

" Misc
call s:HL('Normal'     , s:light , s:dark  , 'none'      )
call s:HL('Cursor'     , s:dark  , s:light , 'none'      )
call s:HL('Underlined' , s:light , 'none'  , 'underline' )
call s:HL('SpecialKey' , s:light , 'none'  , 'none'      )
call s:HL('NonText'    , s:light , 'none'  , 'none'      )
call s:HL('Directory'  , s:light , 'none'  , 'none'      )

" Fold
call s:HL('FoldColumn'	  , s:light, s:gray3 , 'none' )
call s:HL('Folded'		  , s:light, s:gray3 , 'none' )

" Parens
call s:HL('MatchParen'	  , s:dark, s:light , 'none' )

" Popup Menu
call s:HL('Pmenu'      , s:light , s:gray1 , 'none' )
call s:HL('PmenuSbar'  , s:dark  , s:gray3 , 'none' )
call s:HL('PmenuSel'   , s:dark  , s:light , 'none' )
call s:HL('PmenuThumb' , s:dark  , s:light , 'none' )

" Split
call s:HL('VertSplit'	  , s:gray1, s:dark , 'bold' )

" Others
call s:HL('Debug'        , s:light , 'none'  , 'none' )
call s:HL('Delimiter'    , s:light , 'none'  , 'none' )
call s:HL('Question'     , s:light , 'none'  , 'none' )
call s:HL('Special'      , s:light , 'none'  , 'none' )
call s:HL('StatusLine'   , s:light , s:gray2 , 'none' )
call s:HL('StatusLineNC' , s:light , s:gray2 , 'none' )
call s:HL('Tag'          , s:light , 'none'  , 'none' )
call s:HL('WildMenu'     , s:dark  , s:light , 'none' )
call s:HL('TabLine'      , s:light , s:gray2 , 'none' )

" Diff
call s:HL('DiffAdd'    , s:green  , 'none' , 'none' )
call s:HL('DiffChange' , s:yellow , 'none' , 'none' )
call s:HL('DiffDelete' , s:red    , 'none' , 'none' )
call s:HL('DiffText'   , s:dark   , 'none' , 'none' )

" GitGutter
call s:HL('GitGutterAdd'          , s:green  , 'none' , 'none' )
call s:HL('GitGutterChange'       , s:yellow , 'none' , 'none' )
call s:HL('GitGutterDelete'       , s:red    , 'none' , 'none' )
call s:HL('GitGutterChangeDelete' , s:dark   , 'none' , 'none' )

" Vimscript
call s:HL('vimFunc'          , s:light , 'none' , 'none' )
call s:HL('vimUserFunc'      , s:light , 'none' , 'none' )
call s:HL('vimLineComment'   , s:gray0 , 'none' , 'none' )
call s:HL('vimCommentString' , s:gray0 , 'none' , 'none' )

" NERDTree
call s:HL('NERDTreeCWD'            , s:gray1 , 'none' , 'none' )
call s:HL('NERDTreeFile'           , s:light , 'none' , 'none' )
call s:HL('NERDTreeNodeDelimiters' , s:light , 'none' , 'none' )


" FZF
call s:HL('fzf1' , s:light , s:gray2 , 'none' )
call s:HL('fzf2' , s:light , s:gray2 , 'none' )
call s:HL('fzf3' , s:light , s:gray2 , 'none' )
