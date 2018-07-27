if exists("b:current_syntax")
    finish
endif

" Function/Closure
syntax keyword doraKeyword fun function grab

syntax keyword doraKeyword class grab

" Boolean
syntax keyword doraKeyword true false

" Control keywords
syntax keyword doraKeyword break continue else if for return in


highlight link doraKeyword Keyword

" Highlight functions 
" (see: https://stackoverflow.com/a/45626295/667648)
syntax match doraFunction "\zs\(\k\w*\)*\s*\ze(" 
highlight link doraFunction Function

" Arithmetic operations

" a * b
syntax match doraOperator "\v\*"
" a / b
syntax match doraOperator "\v/"
" a % b
syntax match doraOperator "\v\%"
" a + b
syntax match doraOperator "\v\+"
" a - b
syntax match doraOperator "\v-"
" a ^ b
syntax match doraOperator "\v\^"
" a *= b
syntax match doraOperator "\v\*\="
" a /= b
syntax match doraOperator "\v/\="
" a %= b
syntax match doraOperator "\v\%\="
" a += b
syntax match doraOperator "\v\+\="
" a -= b
syntax match doraOperator "\v-\="
" a ^= b
syntax match doraOperator "\v\^\="
" a := b
syntax match doraOperator "\v:\="

syntax match doraOperator "\v[a-zA-z]+:"

" Boolean operations

" a && b
syntax match doraOperator "\v\&\&"
" a and b
syntax match doraOperator "\v and "
" a || b
syntax match doraOperator "\v\|\|"
" a or b
syntax match doraOperator "\v or "

highlight link doraOperator Operator

" Numbers and strings
" (see
" https://github.com/pangloss/vim-javascript/blob/89fcb6bfcada1c4256284723778d128342b48350/syntax/javascript.vim#L57)
syntax match doraString "\v#[0-9a-f]+"
syntax match doraString /\c\<\%(\d\+\%(e[+-]\=\d\+\)\=\|0b[01]\+\|0o\o\+\|0x\x\+\)\>/
syntax region doraString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link doraString String

highlight link doraNumber String


" Matches // style comment
syntax region doraComment start="//" end="$"
highlight link doraComment Comment


let b:current_syntax = "dora"
