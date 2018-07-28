if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

if exists("*DoraIndent")
  finish
endif

setlocal smartindent
