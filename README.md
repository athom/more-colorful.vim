more-colorful.vim
=================

#### Goal: 
Make vim more colorful

![sample](http://pic.yupoo.com/athom/Cf9sNvtm/medish.jpg)

#### Features:
Comparing with the default vim syntax file provided from Go Authors.

1. Operators highlight
2. Functions highlight
3. Methods highlight
4. Structs highlight

#### Tips:
To make it more colorful, I even hack the vim color scheme file fomr [tomorrow-theme](https://github.com/chriskempson/tomorrow-theme). Just named it yesterday :P. You can use any color scheme you like, but I believe the **yesterday** theme will better to display all colors for go.

Q: How to use yesterday theme for go files only?

A: Just add the below line in your .vimrc

```
colo Tomorrow-Night-Bright  "default
autocmd! BufEnter,BufNewFile *.go colo yesterday
autocmd! BufLeave *.go colo Tomorrow-Night-Bright
```


#### TODO:

1. More languages syntax support
2. More color scheme
