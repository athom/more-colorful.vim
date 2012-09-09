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
"   - goexp_highlight_keywords
"     Highlights keywords.
"   - goexp_highlight_braces
"     Highlights braces.
"   - goexp_highlight_strings
"     Highlights strings.
"   - goexp_highlight_arguments
"     Highlights arguments.
"
if !exists("goexp_highlight_keywords")
	let goexp_highlight_keywords = 1
endif

if !exists("goexp_highlight_braces")
	let goexp_highlight_braces = 1
endif

if !exists("goexp_highlight_strings")
	let goexp_highlight_strings = 1
endif

if !exists("goexp_highlight_arguments")
	let goexp_highlight_arguments = 1
endif

" Comments; their contents
syn keyword     goTodo              contained NOTE
hi def link     goTodo              Todo

" Keywords; 
if goexp_highlight_keywords != 0
	syn match goexpKeyword 		/\({{\s*\)\@<=define/
	syn match goexpKeyword 		/\({{\s*\)\@<=if/
	syn match goexpKeyword 		/\({{\s*\)\@<=else/
	syn match goexpKeyword 		/\({{\s*\)\@<=end/
	syn match goexpKeyword 		/\({{\s*\)\@<=template/
	syn match goexpKeyword 		/\({{\s*\)\@<=range/
	syn match goexpKeyword 		/\({{\s*\)\@<=with/
	"syn match goStructDef 	 	/\(type\s\+\)\@<=\w\+\(\s\+struct\s\+{\)\@=/
endif
hi def link     goexpKeyword        Type

" Braces; 
if goexp_highlight_braces != 0
	syn match goexpBrace 		/{{/
	syn match goexpBrace 		/}}/
endif
hi def link     goexpBrace      Operator

" Strings; 
if goexp_highlight_strings != 0
	syn match goexpString 		/\({{.*\)\@<=\".*\"\(.*}}\)\@=/
endif
hi def link     goexpString      String

" Arguments; 
if goexp_highlight_arguments != 0
	syn match goexpArgument 		/\({{.*\)\@<=\.\w*\(.*}}\)\@=/
endif
hi def link     goexpArgument    Structure
