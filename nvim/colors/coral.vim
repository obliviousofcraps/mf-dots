" Original file template from horizon.vim

" Name:         oblivion
" Author:       obliviousofcraps@github

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr 'There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'oblivion'

hi! ColorColumn cterm=NONE gui=NONE ctermbg=235 guibg=#1d212a
hi! CursorColumn cterm=NONE gui=NONE ctermbg=235 guibg=#1d212a
hi! CursorLine cterm=NONE gui=NONE ctermbg=235 guibg=#151D28 
hi! Comment cterm=italic gui=italic ctermfg=08 guifg=#404859
hi! Constant cterm=NONE gui=NONE ctermfg=209 guifg=#fc8993
hi! Cursor cterm=NONE gui=NONE ctermbg=242 ctermfg=242 guibg=#6c6f93 guifg=#6c6f93
hi! CursorLineNr cterm=NONE gui=NONE ctermbg=235 ctermfg=251 guibg=#1d212a guifg=#fc8993
hi! Delimiter cterm=NONE gui=NONE ctermfg=44 guifg=#8de19f
hi! DiffAdd cterm=NONE gui=NONE ctermbg=238 ctermfg=7 guibg=#45493e guifg=#c0c5b9
hi! DiffChange cterm=NONE gui=NONE ctermbg=23 ctermfg=241 guibg=#384851 guifg=#b3c3cc
hi! DiffDelete cterm=NONE gui=NONE ctermbg=52 ctermfg=167 guibg=#53343b guifg=#ceb0b6
hi! DiffText cterm=NONE gui=NONE ctermbg=24 ctermfg=233 guibg=#5b7881 guifg=#192330
hi! Directory cterm=NONE gui=NONE ctermfg=203 guifg=#B4796F
hi! Error cterm=NONE gui=NONE ctermbg=233 ctermfg=203 guibg=#1d212a guifg=#fc8993
hi! ErrorMsg cterm=NONE gui=NONE ctermbg=233 ctermfg=203 guibg=#1d212a guifg=#fc8993
hi! WarningMsg cterm=NONE gui=NONE ctermbg=233 ctermfg=203 guibg=#1d212a guifg=#f9a67a
hi! EndOfBuffer cterm=NONE gui=NONE ctermbg=233 ctermfg=236 guibg=#1d212a guifg=#1d212a
hi! NonText cterm=NONE gui=NONE ctermbg=233 ctermfg=233 guifg=#1d212a guibg=#1d212a
hi! SpecialKey cterm=NONE gui=NONE ctermbg=203 ctermfg=235 guibg=#B4796F guifg=#223042
hi! Folded cterm=NONE gui=NONE ctermbg=233 ctermfg=242 guibg=#192330 guifg=#6c6f93
hi! FoldColumn cterm=NONE gui=NONE ctermbg=233 ctermfg=242 guibg=#192330 guifg=#6c6f93
hi! Function cterm=NONE gui=NONE ctermfg=37 guifg=#a7bdfb
hi! Identifier cterm=italic gui=italic ctermfg=203 guifg=#B4796F
hi! Statement cterm=bold gui=italic ctermfg=171 guifg=#d990cd
hi! Include cterm=NONE gui=NONE ctermfg=171 guifg=#d990cd
hi! LineNr cterm=NONE gui=NONE ctermbg=233 ctermfg=239 guibg=#192330 guifg=#fc8993
hi! MatchParen cterm=NONE gui=NONE ctermbg=237 ctermfg=255 guibg=#3e445e guifg=#e3e3e3
hi! MoreMsg cterm=NONE gui=NONE ctermfg=48 guifg=#8de19f
hi! Normal cterm=NONE gui=NONE ctermbg=233 ctermfg=252 guibg=#192330 guifg=#a7bdfb
hi! Operator cterm=NONE gui=NONE ctermfg=37 guifg=#8de19f
hi! Pmenu cterm=NONE gui=NONE ctermbg=NONE ctermfg=NONE guifg=#A1B5CE
hi! PmenuSbar cterm=NONE gui=NONE ctermbg=236 guibg=#3d425b
hi! PmenuSel cterm=NONE gui=NONE ctermbg=240 ctermfg=255 guibg=#5b6389 guifg=#eff0f4
hi! PmenuThumb cterm=NONE gui=NONE ctermbg=233 guibg=#192330
hi! PreProc cterm=NONE gui=NONE ctermfg=150 guifg=#8de19c
hi! Question cterm=NONE gui=NONE ctermfg=150 guifg=#8de19f
hi! QuickFixLine cterm=NONE gui=NONE ctermbg=233 ctermfg=252 guibg=#272c42 guifg=#192330
hi! Search cterm=NONE gui=NONE ctermbg=216 ctermfg=234 guibg=#1d212a guifg=#f9a67a
hi! SignColumn cterm=NONE gui=NONE ctermbg=233 ctermfg=242 guibg=#1d212a guifg=#6c6f93
hi! Special cterm=NONE gui=NONE ctermfg=203 guifg=#fb9199
hi! SpellBad cterm=undercurl gui=undercurl ctermbg=95 ctermfg=252 guisp=#fb9199
hi! SpellCap cterm=undercurl gui=undercurl ctermbg=24 ctermfg=252 guisp=#8de19f
hi! SpellLocal cterm=undercurl gui=undercurl ctermbg=23 ctermfg=203 guisp=#B4796F
hi! SpellRare cterm=undercurl gui=undercurl ctermbg=97 ctermfg=252 guisp=#434094
hi! StatusLine cterm=reverse gui=reverse ctermbg=234 ctermfg=245 guibg=#17171b guifg=#818596
hi! StatusLineTerm cterm=reverse gui=reverse ctermbg=234 ctermfg=245 guibg=#17171b guifg=#818596
hi! StatusLineNC cterm=reverse gui=reverse ctermbg=237 ctermfg=233 guibg=#3e445e guifg=#151D28
hi! StatusLineTermNC cterm=reverse gui=reverse ctermbg=237 ctermfg=233 guibg=#3e445e guifg=#151D28
hi! StorageClass cterm=italic gui=italic ctermfg=37 guifg=#447CA7
hi! String cterm=NONE gui=NONE ctermfg=209 guifg=#BBA183
hi! Structure cterm=NONE gui=NONE ctermfg=37 guifg=#447CA7
hi! TabLine cterm=bold gui=bold ctermbg=245 ctermfg=234 guibg=#151D28 guifg=#2A3C52
hi! TabLineFill cterm=reverse gui=reverse ctermbg=234 ctermfg=245 guibg=#192330 guifg=#192330
hi! TabLineSel cterm=NONE gui=NONE ctermbg=234 ctermfg=247 guibg=#5CB8A7 guifg=#192330
hi! Title cterm=bold gui=bold ctermfg=37 guifg=#447CA7
hi! Todo cterm=inverse,bold gui=inverse,bold ctermbg=59 ctermfg=48 guibg=#45493e guifg=#4A9387
hi! Type cterm=NONE gui=NONE ctermfg=209 guifg=#BBA183
hi! Underlined cterm=underline gui=underline ctermfg=37 guifg=#447CA7
hi! VertSplit cterm=bold gui=bold ctermbg=233 ctermfg=233 guibg=#151D28 guifg=#151D28
hi! Visual cterm=NONE gui=NONE ctermbg=236 guibg=#272c42
hi! WildMenu cterm=NONE gui=NONE ctermbg=255 ctermfg=234 guibg=#d4d5db guifg=#17171b
hi! diffAdded cterm=NONE gui=NONE ctermfg=48 guifg=#4A9387
hi! diffRemoved cterm=NONE gui=NONE ctermfg=203 guifg=#A65169
hi! ALEErrorSign cterm=NONE gui=NONE ctermbg=233 ctermfg=203 guibg=#192330 guifg=#A65169
hi! ALEWarningSign cterm=NONE gui=NONE ctermbg=233 ctermfg=209 guibg=#192330 guifg=#BBA183
hi! ALEVirtualTextError cterm=NONE gui=NONE ctermfg=203 guifg=#A65169
hi! ALEVirtualTextWarning cterm=NONE gui=NONE ctermfg=209 guifg=#BBA183
hi! CtrlPMode1 cterm=NONE gui=NONE ctermbg=241 ctermfg=234 guibg=#5a5f72 guifg=#17171b
hi! EasyMotionShade cterm=NONE gui=NONE ctermfg=239 guifg=#3d425b
hi! EasyMotionTarget cterm=NONE gui=NONE ctermfg=48 guifg=#4A9387
hi! EasyMotionTarget2First cterm=NONE gui=NONE ctermfg=209 guifg=#BBA183
hi! EasyMotionTarget2Second cterm=NONE gui=NONE ctermfg=209 guifg=#BBA183
hi! GitGutterAdd cterm=NONE gui=NONE ctermbg=233 ctermfg=48 guibg=#192330 guifg=#4A9387
hi! GitGutterChange cterm=NONE gui=NONE ctermbg=233 ctermfg=109 guibg=#192330 guifg=#B4796F
hi! GitGutterChangeDelete cterm=NONE gui=NONE ctermbg=233 ctermfg=109 guibg=#192330 guifg=#B4796F
hi! GitGutterDelete cterm=NONE gui=NONE ctermbg=233 ctermfg=203 guibg=#192330 guifg=#A65169
hi! Sneak cterm=NONE gui=NONE ctermbg=140 ctermfg=234 guibg=#434094 guifg=#B4796F
hi! SneakScope cterm=NONE gui=NONE ctermbg=236 ctermfg=242 guibg=#272c42 guifg=#A1B5CE
hi! SyntasticErrorSign cterm=NONE gui=NONE ctermbg=233 ctermfg=203 guibg=#192330 guifg=#A65169
hi! SyntasticStyleErrorSign cterm=NONE gui=NONE ctermbg=233 ctermfg=203 guibg=#192330 guifg=#A65169
hi! SyntasticStyleWarningSign cterm=NONE gui=NONE ctermbg=233 ctermfg=209 guibg=#192330 guifg=#BBA183
hi! SyntasticWarningSign cterm=NONE gui=NONE ctermbg=233 ctermfg=209 guibg=#192330 guifg=#BBA183
hi! ZenSpace cterm=NONE gui=NONE ctermbg=203 guibg=#A65169
hi! Pmenu ctermbg=black guibg=#151D28
hi! PmenuSel ctermbg=grey guibg=#4A9387

hi! link cssBraces Delimiter
hi! link cssClassName Special
hi! link cssClassNameDot Normal
hi! link cssPseudoClassId Special
hi! link cssTagName Statement
hi! link helpHyperTextJump Constant
hi! link htmlArg Constant
hi! link htmlEndTag Statement
hi! link htmlTag Statement
hi! link jsonQuote Normal
hi! link phpVarSelector Identifier
hi! link pythonFunction Title
hi! link rubyDefine Statement
hi! link rubyFunction Title
hi! link rubyInterpolationDelimiter String
hi! link rubySharpBang Comment
hi! link rubyStringDelimiter String
hi! link sassClass Special
hi! link shFunction Normal
hi! link vimContinue Comment
hi! link vimFuncSID vimFunction
hi! link vimFuncVar Normal
hi! link vimFunction Title
hi! link vimGroup Statement
hi! link vimHiGroup Statement
hi! link vimHiTerm Identifier
hi! link vimMapModKey Special
hi! link vimOption Identifier
hi! link vimVar Normal
hi! link xmlAttrib Constant
hi! link xmlAttribPunct Statement
hi! link xmlEndTag Statement
hi! link xmlNamespace Statement
hi! link xmlTag Statement
hi! link xmlTagName Statement
hi! link yamlKeyValueDelimiter Delimiter
hi! link CtrlPPrtCursor Cursor
hi! link CtrlPMatch Title
hi! link CtrlPMode2 StatusLine
hi! link deniteMatched Normal
hi! link deniteMatchedChar Title
hi! link jsFlowMaybe Normal
hi! link jsFlowObject Identifier
hi! link jsFlowType PreProc
hi! link graphqlName Normal
hi! link graphqlOperator Normal
hi! link jsArrowFunction Operator
hi! link jsClassDefinition String
hi! link jsClassFuncName Title
hi! link jsExport Statement
hi! link jsFuncName Title
hi! link jsFutureKeys Statement
hi! link jsFuncCall Normal
hi! link jsGlobalObjects Statement
hi! link jsModuleKeywords Statement
hi! link jsModuleOperators Statement
hi! link jsNull Constant
hi! link jsObjectFuncName Title
hi! link jsObjectKey Identifier
hi! link jsSuper Statement
hi! link jsTemplateBraces Special
hi! link jsUndefined Constant
hi! link markdownBold Special
hi! link markdownCode String
hi! link markdownCodeDelimiter String
hi! link markdownHeadingDelimiter Comment
hi! link markdownRule Comment
hi! link ngxDirective Statement
hi! link plug1 Normal
hi! link plug2 Identifier
hi! link plugDash Comment
hi! link plugMessage Special
hi! link SignifySignAdd GitGutterAdd
hi! link SignifySignChange GitGutterChange
hi! link SignifySignChangeDelete GitGutterChangeDelete
hi! link SignifySignDelete GitGutterDelete
hi! link SignifySignDeleteFirstLine SignifySignDelete
hi! link StartifyBracket Comment
hi! link StartifyFile Identifier
hi! link StartifyFooter Constant
hi! link StartifyHeader Constant
hi! link StartifyNumber Special
hi! link StartifyPath Comment
hi! link StartifySection Statement
hi! link StartifySlash Comment
hi! link StartifySpecial Normal
hi! link svssBraces Delimiter
hi! link swiftIdentifier Normal
hi! link typescriptAjaxMethods Normal
hi! link typescriptBraces Normal
hi! link typescriptEndColons Normal
hi! link typescriptFuncKeyword Statement
hi! link typescriptGlobalObjects Statement
hi! link typescriptHtmlElemProperties Normal
hi! link typescriptIdentifier Statement
hi! link typescriptMessage Normal
hi! link typescriptNull Constant
hi! link typescriptParens Normal

if has('nvim')
  let g:terminal_color_0 =      '#1d212a'
  let g:terminal_color_8 =      '#585e74'
  let g:terminal_color_1 =      '#fc8993'
  let g:terminal_color_9 =      '#fb9199' 
  let g:terminal_color_2 =      '#8de19f'
  let g:terminal_color_10=      '#8de19c'
  let g:terminal_color_3 =      '#fbdf90'
  let g:terminal_color_11=      '#ffe28e'
  let g:terminal_color_4 =      '#a7bdfb' 
  let g:terminal_color_12=      '#afc3fb'
  let g:terminal_color_5 =      '#d990cd'
  let g:terminal_color_13=      '#df95d3'
  let g:terminal_color_6 =      '#81d4ee'
  let g:terminal_color_14=      '#81d4ee'
  let g:terminal_color_7 =      '#e3e3e3'
  let g:terminal_color_15=      '#e3e3e3'
endif
