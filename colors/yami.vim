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


" Setup ---

set background=dark
highlight clear
if exists("syntax_on")
	syntax reset
endif

" set colorscheme name
let g:colors_name = "yami"


" Palette ---

let s:palette = {}

let s:palette.lime  	 = [16 , "#d6ebc7"]
let s:palette.light  	 = [16 , "#c5c6cc"]
let s:palette.dark  	 = [16 , "#18151c"]
let s:palette.gray  	 = [16 , "#666666"]
let s:palette.mediumgray = [16 , "#2b2b2b"]
let s:palette.lightgray  = [16 , "#323232"]
let s:palette.gray1      = [16 , "#23242a"]
let s:palette.yellow  	 = [16 , "#ffc24b"]
let s:palette.white  	 = [255, "#eeeeee"]

let s:palette.cyan 		 = [6  , "#008080"]
let s:palette.darkblue 	 = [18 , "#000087"]
let s:palette.darkgreen  = [22 , "#005f00"]
let s:palette.blue   	 = [33 , "#0087ff"]
let s:palette.green  	 = [42 , "#00d787"]
let s:palette.darkred 	 = [52 , "#5f0000"]
let s:palette.darkpurple = [53 , "#5f005f"]
let s:palette.darkyellow = [58 , "#5f5f00"]
let s:palette.red      	 = [124, "#af0000"]
let s:palette.purple 	 = [129, "#af00ff"]
let s:palette.brown 	 = [130, "#af5f00"]
let s:palette.orange 	 = [166, "#d75f00"]


" Utilities

function! s:HL(item, fgColor, bgColor, style, ...)
	let undesirable_runtimes = a:000
	for runtime in undesirable_runtimes
		if has(runtime)
			return	
		end
	endfor

	let target = 'gui'
	let pindex = 1
" if has('gui_running')
	" 	let target = 'gui'
	" 	let pindex = 1
	" end

	let command  = 'hi ' . a:item
	let command .= ' ' . target . 'fg=' . a:fgColor[pindex]
	let command .= ' ' . target . 'bg=' . a:bgColor[pindex]
	let command .= ' ' . target . '=' . a:style

	execute command
endfunction


" Composition

" PRIMITIVES
call s:HL('Boolean'		  , s:palette.light, 'none',  'none'	   )
call s:HL('Character'	  , s:palette.light, 'none',  'none'	   )
call s:HL('Constant'	  , s:palette.light, 'none',  'none'	   )
call s:HL('Float'		  , s:palette.light, 'none',  'none'	   )
call s:HL('Number'		  , s:palette.light, 'none',  'none'	   )
call s:HL('String'		  , s:palette.lime,  'none',  'none'	   )
call s:HL('SpecialChar'	  , s:palette.light, 'none',  'none'	   )

" COMMENTS
call s:HL('Comment'		  , s:palette.gray,   'none',   'none'	   )
call s:HL('SpecialComment', s:palette.gray,   'none',   'none'	   )
call s:HL('Title'		  , s:palette.gray,   'none',   'none'	   )
call s:HL('Todo'		  , s:palette.yellow, 'none',   'none'	   )

" LINES, COLUMNS
call s:HL('LineNr'		  , s:palette.gray, 'none', 'none'	   )
call s:HL('CursorLine'	  , 'none', s:palette.mediumgray, 'none'	   )
call s:HL('CursorLineNr'  , 'none', s:palette.mediumgray , 'none'	   )
call s:HL('SignColumn'  , s:palette.mediumgray, s:palette.dark , 'none'	   )

call s:HL('ColorColumn'	  , s:palette.light , s:palette.light, 'none'	   )
call s:HL('CursorColumn'  , s:palette.light, s:palette.light, 'none'	   )

" VISUAL MODE
call s:HL('Visual'		  , s:palette.mediumgray , s:palette.light, 'none'	   )
call s:HL('VisualNOS'	  , s:palette.mediumgray , s:palette.light, 'none'	   )

" SEARCH
call s:HL('Search'		  , s:palette.yellow ,  s:palette.gray, 'none'	   )
call s:HL('IncSearch'	  , s:palette.yellow, s:palette.gray, 'none'	   )

" SPELLING
call s:HL('SpellBad'	  , s:palette.light , s:palette.red	  , 'none'	   )
call s:HL('SpellCap'	  , s:palette.light , s:palette.red	  , 'none'	   )
call s:HL('SpellLocal'	  , s:palette.light , s:palette.red	  , 'none'	   )
call s:HL('SpellRare'	  , s:palette.light , s:palette.red	  , 'none'	   )

" ERROR
call s:HL('Error'		  , s:palette.red	, s:palette.dark , 'none'	   )

" COMMAND MODE MESSAGES
call s:HL('ErrorMsg'	  , s:palette.red	, s:palette.dark , 'none'	   )
call s:HL('WarningMsg'	  , s:palette.brown	, s:palette.dark , 'none'	   )
call s:HL('ModeMsg'		  , s:palette.light	, s:palette.dark , 'none'	   )
call s:HL('MoreMsg'		  , s:palette.light	, s:palette.dark , 'none'	   )

" PREPROCESSOR DIRECTIVES
call s:HL('Include'		  , s:palette.light	, 'none', 'none'	   )
call s:HL('Define'		  , s:palette.light	, 'none', 'none'	   )
call s:HL('Macro'		  , s:palette.light	, 'none', 'none'	   )
call s:HL('PreCondit'	  , s:palette.light	, 'none', 'none'	   )
call s:HL('PreProc'		  , s:palette.light	, 'none', 'none'	   )

" BINDINGS
call s:HL('Identifier'	  , s:palette.light	, 'none', 'none'	   )
call s:HL('Function'	  , s:palette.light	, 'none', 'none'	   )
call s:HL('Keyword'		  , s:palette.light	, 'none', 'none'	   )
call s:HL('Operator'	  , s:palette.light	, 'none', 'none'	   )

" TYPES
call s:HL('Type'		  , s:palette.light	, 'none', 'none'	   )
call s:HL('Typedef'	  	  , s:palette.light	, 'none', 'none'	   )
call s:HL('StorageClass'  , s:palette.light	, 'none', 'none'	   )
call s:HL('Structure'	  , s:palette.light	, 'none', 'none'	   )

" FLOW CONTROL
call s:HL('Statement'	  , s:palette.light	, 'none', 'none'	   )
call s:HL('Conditional'	  , s:palette.light	, 'none', 'none'	   )
call s:HL('Repeat'		  , s:palette.light	, 'none', 'none'	   )
call s:HL('Label'		  , s:palette.light	, 'none', 'none'	   )
call s:HL('Exception'	  , s:palette.light	, 'none', 'none'	   )

" MISC
call s:HL('Normal'		  , s:palette.light,  s:palette.dark ,  'none' )
call s:HL('Cursor'		  , s:palette.dark ,  s:palette.light ,  'none'  )
call s:HL('Underlined'	  , s:palette.light,  'none', 'underline')
call s:HL('SpecialKey'	  , s:palette.light	, 'none', 'none'	   )
call s:HL('NonText'		  , s:palette.light , 'none', 'none'	   )
call s:HL('Directory'  	  , s:palette.orange, 'none', 'none'	   )

" FOLD
call s:HL('FoldColumn'	  , s:palette.light, s:palette.mediumgray , 'none'	   )
call s:HL('Folded'		  , s:palette.light, s:palette.mediumgray , 'none'	   )

" PARENTHESIS
call s:HL('MatchParen'	  , s:palette.orange, s:palette.dark , 'none'	   )

" POPUP
call s:HL('Pmenu'		  , s:palette.light , s:palette.lightgray, 'none'	   )
call s:HL('PmenuSbar'	  , s:palette.dark ,  s:palette.mediumgray, 'none'	   )
call s:HL('PmenuSel'	  , s:palette.dark,   s:palette.light,      'none'	   )
call s:HL('PmenuThumb'	  , s:palette.light,  s:palette.mediumgray, 'none'	   )

" SPLITS
call s:HL('VertSplit'	  , s:palette.lightgray, s:palette.dark , 'bold'	   )

" OTHERS
call s:HL('Debug'		  , s:palette.light	, 'none', 'none'	   )
call s:HL('Delimiter'  	  , s:palette.light	, 'none', 'none'	   )
call s:HL('Question'   	  , s:palette.light	, 'none', 'none'	   )
call s:HL('Special'		  , s:palette.light	, 'none', 'none'	   )
call s:HL('StatusLine' 	  , s:palette.light	, s:palette.gray1 , 'none'	   , 'gui_macvim')
call s:HL('StatusLineNC'  , s:palette.light	, s:palette.dark , 'none')
call s:HL('Tag'			  , s:palette.light	, 'none', 'none'	   )
call s:HL('WildMenu'   	  , s:palette.light	, 'none', 'none'	   )

" DIFF
call s:HL('DiffAdd'		  , s:palette.light , s:palette.green , 'none'	   )
call s:HL('DiffChange'	  , s:palette.yellow , s:palette.blue  , 'none'	   )
call s:HL('DiffDelete'	  , s:palette.light , s:palette.red   , 'none'	   )
call s:HL('DiffText'	  , s:palette.dark ,  s:palette.yellow, 'none'	   )

" GitGutter
call s:HL('GitGutterAdd'    , s:palette.green ,  'none', 'none'	   )
call s:HL('GitGutterChange'	, s:palette.yellow , 'none', 'none'	   )
call s:HL('GitGutterDelete'	    , s:palette.red ,  'none', 'none'	   )
call s:HL('GitGutterChangeDelete'	    , s:palette.dark ,   'none', 'none'	   )

" Vimscript
call s:HL('vimFunc'	    , s:palette.light ,   'none', 'none'	   )
call s:HL('vimUserFunc'	, s:palette.light ,   'none', 'none'	   )
