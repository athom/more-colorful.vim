" Author yeerkunth@gmail.com
" Copyright 2012. All rights reserved.
" Use of this source code is governed by a BSD-style
" license that can be found in the LICENSE file.
"
" go.vim: more Vim syntax file for Go.
"
" Usage: copy it to the ~/.vim/after/syntax/
" 
" Improvment:
"  	This file is a supplement for the origin go.vim.  
"   It supports 
"   1. Hightligt NOTE in the comments
"     let OPTION_NAME = 0
" Options:
"   There are some options for customizing the highlighting; the recommended
"   settings are the default values, but you can write:
"     let OPTION_NAME = 0
"   in your ~/.vimrc file to disable particular options. You can also write:
"     let OPTION_NAME = 1
"   to enable particular options. At present, all options default to on.
"
"   - go_highlight_operators
"     Highlights operators.
"   - go_highlight_functions
"     Highlights functions.
"   - go_highlight_methods
"     Highlights methods.
"   - go_highlight_structs
"     Highlights structs.

if !exists("go_highlight_operators")
	let go_highlight_operators = 1
endif

if !exists("go_highlight_functions")
	let go_highlight_functions = 1
endif

if !exists("go_highlight_methods")
	let go_highlight_methods = 1
endif

if !exists("go_highlight_structs")
	let go_highlight_structs = 1
endif

" Comments; their contents
syn keyword     goTodo              contained NOTE
hi def link     goTodo              Todo


" Operators; 
if go_highlight_operators != 0
	syn match goOperator /:=/
	syn match goOperator />=/
	syn match goOperator /<=/
	syn match goOperator /==/
	syn match goOperator /\s>\s/
	syn match goOperator /\s<\s/
	syn match goOperator /\s+\s/
	syn match goOperator /\s-\s/
	syn match goOperator /\s\*\s/
	syn match goOperator /\s\/\s/
	syn match goOperator /\s%\s/
endif
hi def link     goOperator         Operator

" Functions; 
if go_highlight_functions != 0
	syn match goFunction 	 		/\(func\s\+\)\@<=\w\+\((\)\@=/
	syn match goFunction 	 		/\()\s\+\)\@<=\w\+\((\)\@=/
endif
hi def link     goFunction         Function

" Methods; 
if go_highlight_methods != 0
	syn match goMethod 	 /\(\.\)\@<=\w\+\((\)\@=/
endif
hi def link     goMethod         Function

" Structs; 
if go_highlight_structs != 0
	syn match goStruct 	 			/\(.\)\@<=\w\+\({\)\@=/
	syn match goStructDef 	 	/\(type\s\+\)\@<=\w\+\(\s\+struct\s\+{\)\@=/
endif
hi def link     goStruct         Function
hi def link     goStructDef         Function
