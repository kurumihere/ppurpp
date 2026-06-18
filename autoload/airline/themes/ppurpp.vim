" ppurpp airline theme

let g:airline#themes#ppurpp#palette = {}

let s:is_light = &background ==# "light"

if s:is_light
  let s:bg     = '#ffffff'
  let s:bg_alt = '#f3f3f3'
  let s:fg     = '#383a3f'
  let s:muted  = '#939aa6'
  let s:accent = '#fb7385'
  let s:blue   = '#61afef'
  let s:green  = '#e5bc66'
  let s:yellow = '#ce95b8'
  let s:urgent = '#ff4e4e'
else
  let s:bg     = '#20202a'
  let s:bg_alt = '#22222e'
  let s:fg     = '#abb2bf'
  let s:muted  = '#5c6370'
  let s:accent = '#fb7385'
  let s:blue   = '#61afef'
  let s:green  = '#e5bc66'
  let s:yellow = '#ce95b8'
  let s:urgent = '#ff4e4e'
endif

function! s:gen(fg_a, bg_a, fg_b, bg_b, fg_c, bg_c)
  return airline#themes#generate_color_map(
        \ [a:fg_a, a:bg_a, '', '', ''],
        \ [a:fg_b, a:bg_b, '', '', ''],
        \ [a:fg_c, a:bg_c, '', '', ''])
endfunction

let g:airline#themes#ppurpp#palette.normal = s:gen(s:bg, s:accent, s:fg, s:bg_alt, s:fg, s:bg)
let g:airline#themes#ppurpp#palette.normal_modified = { 'airline_c': [s:fg, s:bg_alt, '', '', ''] }

let g:airline#themes#ppurpp#palette.insert = s:gen(s:bg, s:green, s:fg, s:bg_alt, s:fg, s:bg)
let g:airline#themes#ppurpp#palette.insert_modified = { 'airline_c': [s:fg, s:bg_alt, '', '', ''] }

let g:airline#themes#ppurpp#palette.visual = s:gen(s:bg, s:blue, s:fg, s:bg_alt, s:fg, s:bg)
let g:airline#themes#ppurpp#palette.visual_modified = { 'airline_c': [s:fg, s:bg_alt, '', '', ''] }

let g:airline#themes#ppurpp#palette.replace = s:gen(s:bg, s:urgent, s:fg, s:bg_alt, s:fg, s:bg)
let g:airline#themes#ppurpp#palette.replace_modified = { 'airline_c': [s:fg, s:bg_alt, '', '', ''] }

let g:airline#themes#ppurpp#palette.commandline = s:gen(s:bg, s:yellow, s:fg, s:bg_alt, s:fg, s:bg)
let g:airline#themes#ppurpp#palette.terminal = copy(g:airline#themes#ppurpp#palette.insert)

let g:airline#themes#ppurpp#palette.inactive = s:gen(s:muted, s:bg, s:muted, s:bg, s:muted, s:bg)
let g:airline#themes#ppurpp#palette.inactive_modified = { 'airline_c': [s:muted, s:bg_alt, '', '', ''] }

let g:airline#themes#ppurpp#palette.accents = { 'red': [s:urgent, '', '', ''] }
