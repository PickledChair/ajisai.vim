" Vim syntax file
" Language:     Ajisai
" Maintainer:   Gray SuitCase

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syntax keyword ajsPrimType bool i32 str
syntax keyword ajsKeyword as else func fn if import let module val

syntax match ajsNumber /\<[0-9]\+\>/

syntax region ajsString start=/"/ skip=/\\"/ end=/"/
syntax region ajsCommentLine start="//" end="$"

highlight link ajsPrimType Type
highlight link ajsKeyword Keyword
highlight link ajsNumber Number
highlight link ajsString String
highlight link ajsCommentLine Comment

let b:current_syntax = "ajisai"
