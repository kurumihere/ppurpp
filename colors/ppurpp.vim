if exists("syntax_on")
  syntax reset
endif
hi clear
let g:colors_name = "ppurpp"

let s:is_light = &background ==# "light"
let s:transparent = get(g:, "ppurpp_transparent_mode", 0)

if s:is_light
  let s:bg = s:transparent ? "NONE" : "#F5F6FA"
  let s:bg_alt = s:transparent ? "NONE" : "#E7E9F2"
  let s:fg = "#20202A"
  let s:muted = "#6F6B84"
  let s:disabled = "#9B97AD"
  let s:accent = "#7A4DA3"
  let s:accent_alt = "#8A62B3"
  let s:selected = "#6C5CE7"
  let s:urgent = "#C72C52"
  let s:blue = "#315FBD"
  let s:green = "#1F8A55"
  let s:yellow = "#A38A00"
  let s:cyan = "#238C8C"
  let s:cursor = "#20202A"
  let s:bright_red = "#A82443"
  let s:bright_green = "#187343"
  let s:bright_yellow = "#7A6500"
  let s:bright_blue = "#244D9A"
  let s:bright_magenta = "#65418A"
  let s:bright_cyan = "#1B7070"
  let s:bright_white = "#20202A"
else
  let s:bg = s:transparent ? "NONE" : "#2C2C3B"
  let s:bg_alt = s:transparent ? "NONE" : "#343445"
  let s:fg = "#D0D0D9"
  let s:muted = "#8985A1"
  let s:disabled = "#646078"
  let s:accent = "#713A91"
  let s:accent_alt = "#814F9E"
  let s:selected = "#8A7CF8"
  let s:urgent = "#DD3962"
  let s:blue = "#598BFF"
  let s:green = "#239E62"
  let s:yellow = "#CABA2D"
  let s:cyan = "#43A6A6"
  let s:cursor = "#FFFFFF"
  let s:bright_red = "#F98B9E"
  let s:bright_green = "#4BC77F"
  let s:bright_yellow = "#E0D15E"
  let s:bright_blue = "#7094FF"
  let s:bright_magenta = "#9E71E0"
  let s:bright_cyan = "#6CD0D0"
  let s:bright_white = "#F5F6FA"
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
call s:hi("CursorLineNr", s:yellow, s:bg, "bold")
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
call s:hi("Visual", "", s:bg_alt, "NONE")
call s:hi("Pmenu", s:fg, s:bg_alt, "NONE")
call s:hi("PmenuSel", s:bg, s:selected, "NONE")
call s:hi("PmenuSbar", "", s:bg_alt, "NONE")
call s:hi("PmenuThumb", "", s:accent_alt, "NONE")
call s:hi("NormalFloat", s:fg, s:bg_alt, "NONE")
call s:hi("FloatBorder", s:accent_alt, s:bg_alt, "NONE")
call s:hi("Folded", s:muted, s:bg_alt, s:fold_attr)

call s:hi("Comment", s:muted, "", s:comment_attr)
call s:hi("String", s:green, "", s:string_attr)
call s:hi("Character", s:green, "", s:string_attr)
call s:hi("Number", s:yellow, "", "NONE")
call s:hi("Boolean", s:yellow, "", "bold")
call s:hi("Float", s:yellow, "", "NONE")
call s:hi("Identifier", s:blue, "", "NONE")
call s:hi("Function", s:accent, "", "NONE")
call s:hi("Statement", s:accent_alt, "", "bold")
call s:hi("Conditional", s:accent_alt, "", "bold")
call s:hi("Repeat", s:accent_alt, "", "bold")
call s:hi("Label", s:accent_alt, "", "NONE")
call s:hi("Operator", s:fg, "", get(g:, "ppurpp_italic_operators", 0) ? "italic" : "NONE")
call s:hi("Keyword", s:accent_alt, "", "bold")
call s:hi("Exception", s:urgent, "", "bold")
call s:hi("PreProc", s:blue, "", "NONE")
call s:hi("Include", s:blue, "", "NONE")
call s:hi("Define", s:blue, "", "NONE")
call s:hi("Macro", s:blue, "", "NONE")
call s:hi("PreCondit", s:blue, "", "NONE")
call s:hi("Type", s:cyan, "", "NONE")
call s:hi("StorageClass", s:cyan, "", "NONE")
call s:hi("Structure", s:cyan, "", "NONE")
call s:hi("Typedef", s:cyan, "", "NONE")
call s:hi("Special", s:yellow, "", "NONE")
call s:hi("SpecialChar", s:yellow, "", "NONE")
call s:hi("Tag", s:yellow, "", "NONE")
call s:hi("Delimiter", s:fg, "", "NONE")
call s:hi("Underlined", s:blue, "", "underline")
call s:hi("Error", s:urgent, s:bg, "bold")
call s:hi("Todo", s:yellow, s:bg_alt, "bold")

call s:hi("DiagnosticError", s:urgent, "", "NONE")
call s:hi("DiagnosticWarn", s:yellow, "", "NONE")
call s:hi("DiagnosticInfo", s:blue, "", "NONE")
call s:hi("DiagnosticHint", s:cyan, "", "NONE")
call s:hi("LspReferenceText", "", s:bg_alt, "NONE")
call s:hi("LspReferenceRead", "", s:bg_alt, "NONE")
call s:hi("LspReferenceWrite", "", s:bg_alt, "NONE")

call s:hi("markdownCode", s:cyan, "", "NONE")
call s:hi("markdownCodeBlock", s:cyan, "", "NONE")
call s:hi("markdownHeadingDelimiter", s:accent, "", "bold")
call s:hi("markdownHeadingRule", s:accent, "", "NONE")
call s:hi("markdownLinkText", s:blue, "", "underline")
call s:hi("markdownUrl", s:blue, "", "underline")

if has("nvim")
  call s:hi("@comment", s:muted, "", s:comment_attr)
  call s:hi("@string", s:green, "", s:string_attr)
  call s:hi("@string.documentation", s:green, "", s:string_attr)
  call s:hi("@text.emphasis", s:fg, "", s:italic_enabled("emphasis") ? "italic" : "NONE")
  call s:hi("@markup.italic", s:fg, "", s:italic_enabled("emphasis") ? "italic" : "NONE")
  call s:hi("@markup.strong", s:fg, "", "bold")
  call s:hi("@keyword", s:accent_alt, "", "bold")
  call s:hi("@operator", s:fg, "", get(g:, "ppurpp_italic_operators", 0) ? "italic" : "NONE")
  call s:hi("@function", s:accent, "", "NONE")
  call s:hi("@function.call", s:accent, "", "NONE")
  call s:hi("@type", s:cyan, "", "NONE")
  call s:hi("@variable", s:fg, "", "NONE")
  call s:hi("@property", s:blue, "", "NONE")
  call s:hi("@constant", s:yellow, "", "NONE")
  call s:hi("@number", s:yellow, "", "NONE")
  call s:hi("@boolean", s:yellow, "", "bold")
  call s:hi("@punctuation.delimiter", s:fg, "", "NONE")
  call s:hi("@punctuation.bracket", s:fg, "", "NONE")
  call s:hi("@module", s:blue, "", "NONE")
  call s:hi("@parameter", s:fg, "", "NONE")
  call s:hi("@label", s:accent_alt, "", "NONE")
endif

if exists("g:terminal_ansi_colors") && get(g:, "ppurpp_terminal_colors", 1)
  let g:terminal_color_0 = "#2C2C3B"
  let g:terminal_color_1 = "#DD3962"
  let g:terminal_color_2 = "#239E62"
  let g:terminal_color_3 = "#CABA2D"
  let g:terminal_color_4 = "#598BFF"
  let g:terminal_color_5 = "#713A91"
  let g:terminal_color_6 = "#43A6A6"
  let g:terminal_color_7 = "#D0D0D9"
  let g:terminal_color_8 = "#646078"
  let g:terminal_color_9 = "#F98B9E"
  let g:terminal_color_10 = "#4BC77F"
  let g:terminal_color_11 = "#E0D15E"
  let g:terminal_color_12 = "#7094FF"
  let g:terminal_color_13 = "#9E71E0"
  let g:terminal_color_14 = "#6CD0D0"
  let g:terminal_color_15 = "#F5F6FA"
endif
