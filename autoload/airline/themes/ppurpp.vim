" ppurpp airline theme

let g:airline#themes#ppurpp#palette = {}

let s:is_light = &background ==# "light"

if s:is_light
  let s:bg     = '#F5F6FA'
  let s:bg_alt = '#E7E9F2'
  let s:fg     = '#20202A'
  let s:muted  = '#6F6B84'
  let s:accent = '#7A4DA3'
  let s:blue   = '#315FBD'
  let s:green  = '#1F8A55'
  let s:yellow = '#A38A00'
  let s:urgent = '#C72C52'
else
  let s:bg     = '#2C2C3B'
  let s:bg_alt = '#343445'
  let s:fg     = '#D0D0D9'
  let s:muted  = '#8985A1'
  let s:accent = '#713A91'
  let s:blue   = '#598BFF'
  let s:green  = '#239E62'
  let s:yellow = '#CABA2D'
  let s:urgent = '#DD3962'
endif

function! s:gen(fg_a, bg_a, fg_b, bg_b, fg_c, bg_c)
  return airline#themes#generate_color_map(
        \ [a:fg_a, a:bg_a, '', '', ''],
        \ [a:fg_b, a:bg_b, '', '', ''],
        \ [a:fg_c, a:bg_c, '', '', ''])
endfunction

" Normal
let g:airline#themes#ppurpp#palette.normal = s:gen(
      \ s:bg, s:accent,
      \ s:fg, s:bg_alt,
      \ s:fg, s:bg)
let g:airline#themes#ppurpp#palette.normal_modified = {
      \ 'airline_c': [s:fg, s:bg_alt, '', '', ''],
      \ }

" Insert
let g:airline#themes#ppurpp#palette.insert = s:gen(
      \ s:bg, s:green,
      \ s:fg, s:bg_alt,
      \ s:fg, s:bg)
let g:airline#themes#ppurpp#palette.insert_modified = {
      \ 'airline_c': [s:fg, s:bg_alt, '', '', ''],
      \ }

" Visual
let g:airline#themes#ppurpp#palette.visual = s:gen(
      \ s:bg, s:blue,
      \ s:fg, s:bg_alt,
      \ s:fg, s:bg)
let g:airline#themes#ppurpp#palette.visual_modified = {
      \ 'airline_c': [s:fg, s:bg_alt, '', '', ''],
      \ }

" Replace
let g:airline#themes#ppurpp#palette.replace = s:gen(
      \ s:bg, s:urgent,
      \ s:fg, s:bg_alt,
      \ s:fg, s:bg)
let g:airline#themes#ppurpp#palette.replace_modified = {
      \ 'airline_c': [s:fg, s:bg_alt, '', '', ''],
      \ }

" Command
let g:airline#themes#ppurpp#palette.commandline = s:gen(
      \ s:bg, s:yellow,
      \ s:fg, s:bg_alt,
      \ s:fg, s:bg)

" Terminal
let g:airline#themes#ppurpp#palette.terminal = copy(g:airline#themes#ppurpp#palette.insert)

" Inactive
let g:airline#themes#ppurpp#palette.inactive = s:gen(
      \ s:muted, s:bg,
      \ s:muted, s:bg,
      \ s:muted, s:bg)
let g:airline#themes#ppurpp#palette.inactive_modified = {
      \ 'airline_c': [s:accent, s:bg, '', '', ''],
      \ }

" Accents
let g:airline#themes#ppurpp#palette.accents = {
      \ 'red': [s:urgent, '', '', ''],
      \ }
