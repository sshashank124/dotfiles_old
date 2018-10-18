let g:airline#themes#dark#palette = {}
let s:cterm00 = 0
let s:cterm01 = 16
let s:cterm02 = 17
let s:cterm03 = 18
let s:cterm04 = 19
let s:cterm05 = 20
let s:cterm06 = 21
let s:cterm07 = 15
let s:cterm08 = 7
let s:cterm09 = 6
let s:cterm0A = 2
let s:cterm0B = 4
let s:cterm0C = 5
let s:cterm0D = 3
let s:cterm0E = 1
let s:cterm0F = 4

let s:N1   = [ s:cterm00, s:cterm0B, s:cterm00, s:cterm0B ]
let s:N2   = [ s:cterm06, s:cterm02, s:cterm06, s:cterm02 ]
let s:N3   = [ s:cterm09, s:cterm01, s:cterm09, s:cterm01 ]
let g:airline#themes#dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1   = [ s:cterm00, s:cterm0D, s:cterm00, s:cterm0D ]
let s:I2   = [ s:cterm06, s:cterm02, s:cterm06, s:cterm02 ]
let s:I3   = [ s:cterm09, s:cterm01, s:cterm09, s:cterm01 ]
let g:airline#themes#dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let s:R1   = [ s:cterm00, s:cterm08, s:cterm00, s:cterm08 ]
let s:R2   = [ s:cterm06, s:cterm02, s:cterm06, s:cterm02 ]
let s:R3   = [ s:cterm09, s:cterm01, s:cterm09, s:cterm01 ]
let g:airline#themes#dark#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let s:V1   = [ s:cterm00, s:cterm0E, s:cterm00, s:cterm0E ]
let s:V2   = [ s:cterm06, s:cterm02, s:cterm06, s:cterm02 ]
let s:V3   = [ s:cterm09, s:cterm01, s:cterm09, s:cterm01 ]
let g:airline#themes#dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let s:IA1   = [ s:cterm05, s:cterm01, s:cterm05, s:cterm01 ]
let s:IA2   = [ s:cterm05, s:cterm01, s:cterm05, s:cterm01 ]
let s:IA3   = [ s:cterm05, s:cterm01, s:cterm05, s:cterm01 ]
let g:airline#themes#dark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
