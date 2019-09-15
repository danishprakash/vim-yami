set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
if !exists("termguicolors")
  set termguicolors
endif
let g:colors_name="atlas"


let Italic = ""
if exists('g:atlas_italic')
  let Italic = "italic"
endif
let g:atlas_italic = get(g:, 'atlas_italic', 0)

let Bold = ""
if exists('g:atlas_bold')
  let Bold = "bold"
endif

let g:atlas_bold = get(g:, 'atlas_bold', 0)
hi ColorColumn guifg=NONE ctermfg=NONE guibg=#323232 ctermbg=236 gui=NONE cterm=NONE
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#323232 ctermbg=236 gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=#323232 ctermbg=236 gui=NONE cterm=NONE
hi CursorLineNr guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Directory guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=NONE ctermfg=NONE guibg=#dbdbdb ctermbg=238 gui=NONE cterm=NONE
hi DiffChange guifg=NONE ctermfg=NONE guibg=#dbdbdb ctermbg=239 gui=NONE cterm=NONE
hi DiffDelete guifg=#dbdbdb ctermfg=203 guibg=#dbdbdb ctermbg=237 gui=NONE cterm=NONE
hi DiffText guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=reverse cterm=reverse
hi ErrorMsg guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=reverse cterm=reverse
hi VertSplit guifg=#242424 ctermfg=235 guibg=#242424 ctermbg=235 gui=NONE cterm=NONE
hi Folded guifg=#666666 ctermfg=242 guibg=#1d1d1d ctermbg=234 gui=NONE cterm=NONE
hi FoldColumn guifg=#666666 ctermfg=242 guibg=#1d1d1d ctermbg=234 gui=NONE cterm=NONE
hi SignColumn guifg=#999999 ctermfg=246 guibg=#242424 ctermbg=235 gui=NONE cterm=NONE
hi IncSearch guifg=#242424 ctermfg=235 guibg=#ffffff ctermbg=15 gui=NONE cterm=NONE
hi LineNr guifg=#666666 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=#f43753 ctermfg=203 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi NonText guifg=#666666 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Normal ctermfg=255 guifg=#c5c6cc guibg=#18151c ctermbg=235 gui=NONE cterm=NONE
hi PMenu guifg=#242424 ctermfg=235 guibg=#dbdbdb ctermbg=81 gui=NONE cterm=NONE
hi PMenuSel guifg=#dbdbdb ctermfg=235 guibg=#666666 ctermbg=185 gui=NONE cterm=NONE
hi PmenuSbar guifg=#dbdbdb ctermfg=180 guibg=#dbdbdb ctermbg=180 gui=NONE cterm=NONE
hi PmenuThumb guifg=#dbdbdb ctermfg=215 guibg=#dbdbdb ctermbg=215 gui=NONE cterm=NONE
hi Question guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Search guifg=#ffffff ctermfg=15 guibg=NONE ctermbg=NONE gui=underline,Bold cterm=underline,Bold
hi SpecialKey guifg=#666666 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellLocal guifg=#dbdbdb ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellCap guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellRare guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#1d1d1d ctermfg=234 guibg=#666666 ctermbg=242 gui=Bold cterm=Bold
hi StatusLineNC guifg=#999999 ctermfg=246 guibg=#666666 ctermbg=238 gui=NONE cterm=NONE
hi TabLine guifg=#999999 ctermfg=246 guibg=#666666 ctermbg=238 gui=NONE cterm=NONE
hi TabLineFill guifg=NONE ctermfg=NONE guibg=#666666 ctermbg=238 gui=NONE cterm=NONE
hi TabLineSel guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi Title guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi Visual guifg=NONE ctermfg=NONE guibg=#666666 ctermbg=0 gui=NONE cterm=NONE
hi VisualNOS guifg=NONE ctermfg=NONE guibg=#666666 ctermbg=0 gui=NONE cterm=NONE
hi WarningMsg guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#242424 ctermfg=235 guibg=#dbdbdb ctermbg=185 gui=Bold cterm=Bold
hi Comment guifg=#666666 ctermfg=242 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Constant guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#d6ebc7 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Character guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Number guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Float guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Function guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Operator guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Exception guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Type guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Special guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Underlined guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi Error guifg=#f43753 ctermfg=255 guibg=NONE ctermbg=203 gui=NONE cterm=NONE
hi Todo guifg=#ffc24b ctermfg=203 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi cssVendor guifg=#dbdbdb ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssTagName guifg=#dbdbdb ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAttrComma guifg=#dbdbdb ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssBackgroundProp guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssBorderProp guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssBoxProp guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssDimensionProp guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssFontProp guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssPositioningProp guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssTextProp guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssValueLength guifg=#dbdbdb ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssValueInteger guifg=#dbdbdb ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssValueNumber guifg=#dbdbdb ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssIdentifier guifg=#dbdbdb ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssIncludeKeyword guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssImportant guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssClassName guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssClassNameDot guifg=#dbdbdb ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssProp guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAttr guifg=#dbdbdb ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssUnitDecorators guifg=#dbdbdb ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssNoise guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffRemoved guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffChanged guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffAdded guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffSubname guifg=#dbdbdb ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi elmDelimiter guifg=#dbdbdb ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi elmOperator guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FugitiveblameHash guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FugitiveblameUncommitted guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FugitiveblameTime guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FugitiveblameNotCommittedYet guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitBranch guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitDiscardedType guifg=#dbdbdb ctermfg=160 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitSelectedType guifg=#dbdbdb ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitHeader guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitUntrackedFile guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitDiscardedFile guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitSelectedFile guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpHyperTextEntry guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpHeadline guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpSectionDelim guifg=#666666 ctermfg=242 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpNote guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptOperator guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptBraces guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptNull guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonEscape guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonNumber guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonBraces guifg=#dbdbdb ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonNull guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonBoolean guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonKeywordMatch guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonQuote guifg=#dbdbdb ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonNoise guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH1 guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi markdownHeadingRule guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi markdownHeadingDelimiter guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi markdownListMarker guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownBlockquote guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownRule guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkText guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkTextDelimiter guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkDelimiter guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownIdDeclaration guifg=#dbdbdb ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownAutomaticLink guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrl guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrlTitle guifg=#dbdbdb ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrlDelimiter guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrlTitleDelimiter guifg=#dbdbdb ctermfg=58 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCodeDelimiter guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCode guifg=#dbdbdb ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownEscape guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownError guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeHelp guifg=#dbdbdb ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeHelpKey guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeHelpCommand guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeHelpTitle guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeUp guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeCWD guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeOpenable guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeClosable guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pugJavascriptOutputChar guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterAdd guifg=#5af78d ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterChange guifg=#ffc24b ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterDelete guifg=#f43753 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterChangeDelete guifg=#f43753 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptOpSymbols guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptParens guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptDocTags guifg=#dbdbdb ctermfg=242 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptDocSeeTag guifg=#dbdbdb ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptBrowserObjects guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptDOMObjects guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptFuncArg guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsParensIfElse guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectKey guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsArrowFunction guifg=#dbdbdb ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFunctionKey guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncName guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectFuncName guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsNull guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectColon guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsParens guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncParens guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncArgs guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsSpecial guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsTemplateBraces guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsGlobalObjects guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsGlobalNodeObjects guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsImport guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExport guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExportDefault guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExportDefaultGroup guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFrom guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plug2 guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugH2 guifg=#dbdbdb ctermfg=81 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi plugBracket guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugNumber guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugDash guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugStar guifg=#dbdbdb ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugMessage guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugName guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugUpdate guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugEdge guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugSha guifg=#dbdbdb ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugNotLoaded guifg=#dbdbdb ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link SignifySignAdd GitGutterAdd
hi link SignifySignDelete GitGutterDelete
hi link SignifySignDeleteFirstLine SignifySignDelete
hi link SignifySignChange GitGutterChange
hi link SignifySignChangeDelete GitGutterChangeDelete
hi stylusVariable guifg=#dbdbdb ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusClass guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusClassChar guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusId guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusIdChar guifg=#dbdbdb ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssVisualVal guifg=#dbdbdb ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusImport guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimCommentString guifg=#dbdbdb ctermfg=58 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimCommentTitle guifg=#dbdbdb ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimError guifg=#dbdbdb ctermfg=255 guibg=#dbdbdb ctermbg=203 gui=NONE cterm=NONE
hi xmlNamespace guifg=#dbdbdb ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlAttribPunct guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlProcessingDelim guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptOpSymbol guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptDocNotation guifg=#dbdbdb ctermfg=242 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptDocNamedParamType guifg=#dbdbdb ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptDocParamName guifg=#dbdbdb ctermfg=58 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptDocParamType guifg=#dbdbdb ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptTemplateSB guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptRepeat guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptObjectLabelColon guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptObjectMethodName guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptFuncName guifg=#dbdbdb ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlFlowString guifg=#dbdbdb ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlFlowStringDelimiter guifg=#dbdbdb ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlKeyValueDelimiter guifg=#dbdbdb ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

let g:terminal_color_foreground = "#242424"
let g:terminal_color_background = "#dbdbdb"
let g:terminal_color_0 = "#242424"
let g:terminal_color_1 = "#dbdbdb"
let g:terminal_color_2 = "#dbdbdb"
let g:terminal_color_3 = "#dbdbdb"
let g:terminal_color_4 = "#dbdbdb"
let g:terminal_color_5 = "#dbdbdb"
let g:terminal_color_6 = "#dbdbdb"
let g:terminal_color_7 = "#dbdbdb"
let g:terminal_color_8 = "#1d1d1d"
let g:terminal_color_9 = "#dbdbdb"
let g:terminal_color_10 = "#dbdbdb"
let g:terminal_color_11 = "#dbdbdb"
let g:terminal_color_12 = "#dbdbdb"
let g:terminal_color_13 = "#dbdbdb"
let g:terminal_color_14 = "#dbdbdb"
let g:terminal_color_15 = "#ffffff"
