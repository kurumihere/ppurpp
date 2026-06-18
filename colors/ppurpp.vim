if exists("syntax_on")
  syntax reset
endif
hi clear
let g:colors_name = "ppurpp"

let s:is_light = &background ==# "light"
let s:transparent = get(g:, "ppurpp_transparent_mode", 0)

if s:is_light
  let s:bg = s:transparent ? "NONE" : "#ffffff"
  let s:bg_alt = s:transparent ? "NONE" : "#f3f3f3"
  let s:fg = "#383a3f"
  let s:muted = "#939aa6"
  let s:disabled = "#8d8f9a"
  let s:accent = "#fb7385"
  let s:accent_alt = "#98c379"
  let s:selected = "#e5deff"
  let s:urgent = "#ff4e4e"
  let s:blue = "#61afef"
  let s:green = "#e5bc66"
  let s:yellow = "#ce95b8"
  let s:cyan = "#56b6c2"
  let s:cursor = "#6a6a6a"
  let s:bright_red = "#fb7385"
  let s:bright_green = "#98c379"
  let s:bright_yellow = "#e5bc66"
  let s:bright_blue = "#61afef"
  let s:bright_magenta = "#ce95b8"
  let s:bright_cyan = "#56b6c2"
  let s:bright_white = "#383a3f"
else
  let s:bg = s:transparent ? "NONE" : "#20202a"
  let s:bg_alt = s:transparent ? "NONE" : "#22222e"
  let s:fg = "#abb2bf"
  let s:muted = "#5c6370"
  let s:disabled = "#495162"
  let s:accent = "#fb7385"
  let s:accent_alt = "#98c379"
  let s:selected = "#40375e"
  let s:urgent = "#ff4e4e"
  let s:blue = "#61afef"
  let s:green = "#e5bc66"
  let s:yellow = "#ce95b8"
  let s:cyan = "#56b6c2"
  let s:cursor = "#dedede"
  let s:bright_red = "#fb7385"
  let s:bright_green = "#98c379"
  let s:bright_yellow = "#e5bc66"
  let s:bright_blue = "#61afef"
  let s:bright_magenta = "#ce95b8"
  let s:bright_cyan = "#56b6c2"
  let s:bright_white = "#abb2bf"
endif

function! s:hi(group, fg, bg, attrs) abort
  let l:cmd = "hi " . a:group
  if a:fg !=# ""
    let l:cmd .= " guifg=" . a:fg
  endif
  if a:bg !=# ""
    let l:cmd .= " guibg=" . a:bg
  endif
  if a:attrs !=# ""
    let l:cmd .= " gui=" . a:attrs
  endif
  execute l:cmd
endfunction

function! s:italic_enabled(name) abort
  return get(g:, 'ppurpp_italic_' . a:name, 0)
endfunction

let s:comment_attr = s:italic_enabled("comments") ? "italic" : "NONE"
let s:string_attr = s:italic_enabled("strings") ? "italic" : "NONE"
let s:fold_attr = s:italic_enabled("folds") ? "italic" : "NONE"

call s:hi("Normal", s:fg, s:bg, "NONE")
call s:hi("NormalNC", s:fg, s:bg, "NONE")
call s:hi("EndOfBuffer", s:bg, s:bg, "NONE")
call s:hi("LineNr", s:disabled, s:bg, "NONE")
call s:hi("CursorLineNr", s:fg, s:bg, "bold")
call s:hi("CursorLine", "", s:bg_alt, "NONE")
call s:hi("ColorColumn", "", s:bg_alt, "NONE")
call s:hi("SignColumn", s:fg, s:bg, "NONE")
call s:hi("VertSplit", s:bg_alt, s:bg, "NONE")
call s:hi("StatusLine", s:fg, s:bg_alt, "NONE")
call s:hi("StatusLineNC", s:muted, s:bg, "NONE")
call s:hi("TabLine", s:muted, s:bg_alt, "NONE")
call s:hi("TabLineFill", s:muted, s:bg, "NONE")
call s:hi("TabLineSel", s:fg, s:bg, "bold")
call s:hi("Search", s:bg, s:yellow, "NONE")
call s:hi("IncSearch", s:bg, s:accent, "NONE")
call s:hi("Visual", s:fg, s:selected, "NONE")
call s:hi("Pmenu", s:fg, s:bg_alt, "NONE")
call s:hi("PmenuSel", s:fg, s:selected, "NONE")
call s:hi("PmenuSbar", "", s:bg_alt, "NONE")
call s:hi("PmenuThumb", "", s:muted, "NONE")
call s:hi("NormalFloat", s:fg, s:bg_alt, "NONE")
call s:hi("FloatBorder", s:muted, s:bg_alt, "NONE")
call s:hi("Folded", s:muted, s:bg_alt, s:fold_attr)

call s:hi("Comment", s:muted, "", s:comment_attr)
call s:hi("String", s:green, "", s:string_attr)
call s:hi("Character", s:green, "", s:string_attr)
call s:hi("Number", s:yellow, "", "NONE")
call s:hi("Boolean", s:yellow, "", "bold")
call s:hi("Float", s:yellow, "", "NONE")
call s:hi("Identifier", s:fg, "", "NONE")
call s:hi("Function", s:accent_alt, "", "NONE")
call s:hi("Statement", s:accent, "", "bold")
call s:hi("Conditional", s:accent, "", "bold")
call s:hi("Repeat", s:accent, "", "bold")
call s:hi("Label", s:accent, "", "NONE")
call s:hi("Operator", s:fg, "", get(g:, "ppurpp_italic_operators", 0) ? "italic" : "NONE")
call s:hi("Keyword", s:accent, "", "bold")
call s:hi("Exception", s:urgent, "", "bold")
call s:hi("PreProc", s:accent_alt, "", "NONE")
call s:hi("Include", s:accent_alt, "", "NONE")
call s:hi("Define", s:accent_alt, "", "NONE")
call s:hi("Macro", s:accent_alt, "", "NONE")
call s:hi("PreCondit", s:accent_alt, "", "NONE")
call s:hi("Type", s:blue, "", "NONE")
call s:hi("StorageClass", s:blue, "", "NONE")
call s:hi("Structure", s:blue, "", "NONE")
call s:hi("Typedef", s:blue, "", "NONE")
call s:hi("Special", s:green, "", "NONE")
call s:hi("SpecialChar", s:green, "", "NONE")
call s:hi("Tag", s:green, "", "NONE")
call s:hi("Delimiter", s:fg, "", "NONE")
call s:hi("Underlined", s:blue, "", "underline")
call s:hi("Error", s:urgent, s:bg, "bold")
call s:hi("Todo", s:accent, s:bg_alt, "bold")

call s:hi("DiagnosticError", s:urgent, "", "NONE")
call s:hi("DiagnosticWarn", s:green, "", "NONE")
call s:hi("DiagnosticInfo", s:blue, "", "NONE")
call s:hi("DiagnosticHint", s:cyan, "", "NONE")
call s:hi("LspReferenceText", s:fg, s:selected, "NONE")
call s:hi("LspReferenceRead", s:fg, s:selected, "NONE")
call s:hi("LspReferenceWrite", s:fg, s:selected, "NONE")

call s:hi("markdownCode", s:blue, "", "NONE")
call s:hi("markdownCodeBlock", s:blue, "", "NONE")
call s:hi("markdownHeadingDelimiter", s:accent, "", "bold")
call s:hi("markdownHeadingRule", s:accent, "", "NONE")
call s:hi("markdownLinkText", s:blue, "", "underline")
call s:hi("markdownUrl", s:muted, "", "underline")

if has("nvim")
  call s:hi("@comment", s:muted, "", s:comment_attr)
  call s:hi("@string", s:green, "", s:string_attr)
  call s:hi("@string.documentation", s:green, "", s:string_attr)
  call s:hi("@text.emphasis", s:fg, "", s:italic_enabled("emphasis") ? "italic" : "NONE")
  call s:hi("@markup.italic", s:fg, "", s:italic_enabled("emphasis") ? "italic" : "NONE")
  call s:hi("@markup.strong", s:fg, "", "bold")
  call s:hi("@text.literal", s:fg, s:selected, "NONE")
  call s:hi("@text.reference", s:fg, s:selected, "NONE")
  call s:hi("@keyword", s:accent, "", "bold")
  call s:hi("@operator", s:fg, "", get(g:, "ppurpp_italic_operators", 0) ? "italic" : "NONE")
  call s:hi("@function", s:accent_alt, "", "NONE")
  call s:hi("@function.call", s:accent_alt, "", "NONE")
  call s:hi("@type", s:blue, "", "NONE")
  call s:hi("@variable", s:fg, "", "NONE")
  call s:hi("@property", s:blue, "", "NONE")
  call s:hi("@constant", s:yellow, "", "NONE")
  call s:hi("@number", s:yellow, "", "NONE")
  call s:hi("@boolean", s:yellow, "", "bold")
  call s:hi("@punctuation.delimiter", s:fg, "", "NONE")
  call s:hi("@punctuation.bracket", s:fg, "", "NONE")
  call s:hi("@module", s:blue, "", "NONE")
  call s:hi("@parameter", s:fg, "", "NONE")
  call s:hi("@label", s:accent, "", "NONE")
endif

if exists("g:terminal_ansi_colors") && get(g:, "ppurpp_terminal_colors", 1)
  let g:terminal_color_0 = "#20202a"
  let g:terminal_color_1 = "#fb7385"
  let g:terminal_color_2 = "#98c379"
  let g:terminal_color_3 = "#e5bc66"
  let g:terminal_color_4 = "#61afef"
  let g:terminal_color_5 = "#ce95b8"
  let g:terminal_color_6 = "#56b6c2"
  let g:terminal_color_7 = "#abb2bf"
  let g:terminal_color_8 = "#495162"
  let g:terminal_color_9 = "#fb7385"
  let g:terminal_color_10 = "#98c379"
  let g:terminal_color_11 = "#e5bc66"
  let g:terminal_color_12 = "#61afef"
  let g:terminal_color_13 = "#ce95b8"
  let g:terminal_color_14 = "#56b6c2"
  let g:terminal_color_15 = "#abb2bf"
endif
