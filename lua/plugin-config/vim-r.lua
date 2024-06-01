vim.cmd [[
let rrst_syn_hl_chunk = 1
let rmd_syn_hl_chunk = 1

let rout_follow_colorscheme = 1
" hi CocFloating ctermfg=228 ctermbg=241 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
" hi link CocFloating markdown

"" The background color of the popup menu
" hi Quote ctermbg=109 guifg=#83a598
" hi Pmenu ctermfg=NONE ctermbg=23 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
" hi PmenuSel ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE

" The following R function will be loaded when editing R script
let g:R_start_libs = "base,stats,graphics,grDevices,utils,methods,data.table,ggplot2,magrittr"
let g:R_set_omnifunc = ["r",  "rmd", "rnoweb", "rhelp", "rrst"]
let CloseWhenSelected = 0
let showmarks_include="abcdefghijklmnopqrstuvwxyz"
""set vim-r-plugin to make double "__" to be <-
let R_assign = 0

au BufNewFile,BufReadPost *.Rmd,*.R,*r noremap <buffer> <silent> \st :RStop<ESC>
au BufNewFile,BufReadPost *.R,*.r noremap <buffer> <silent> \cd i\code{<ESC>ea}<ESC>

let R_hi_fun = 1 " Highlight R functions
let R_hi_fun_paren = 1 " Highlight R functions only if followed by a `(`

" let R_show_args = 0
let R_objbr_w = 30 

" set tags, however, it need to generate tags first
"autocmd FileType r set tags+=~/.vim/Rtags,~/.vim/RsrcTags
"autocmd FileType rnoweb set tags+=~p/.vim/Rtags,~/.vim/RsrcTags

" set auto indent type
let r_indent_align_args = 0
let r_indent_ess_comments = 0
let r_indent_ess_compatible = 1

" Make Tmux split the window vertically
" let R_min_editor_width=80
let R_min_editor_width=880

" PDF viewer
let g_openpdf = 0
let g:R_pdfviewer = "PDF Expert"

" Press the space bar to send lines (in Normal mode) and selections to R:
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RSendLine

"let R_source = '~/.vim/bundle/Nvim-R/ftplugin/tmux_split.vim'
let R_external_term = 0
let R_applescript = 0
"let R_term_cmd = 'tilix -a session-add-right -e'

"" define the number of lines of R Console (Tmux split)
"let R_rconsole_height=60
let R_rconsole_width=96
"let R_notmuxconf = 1
let R_esc_term = 1
" configure the R help page 
let R_rmdchunk = 0
" let R_nvimpager = "horizontal"
let R_nvimpager = "vertical"
let g:markdown_fenced_languages = ['r', 'python']
let g:rmd_fenced_languages = ['r', 'python']
" Do not auto highlight terminal output
let R_hl_term = 1
" c: new line comment; o: new line by o comment
autocmd FileType r setlocal formatoptions-=t formatoptions+=crqlj

"" markdown
let g:vim_markdown_folding_disabled = 1
let g:pandoc#folding#fold_fenced_codeblocks = 1
let g:pandoc#folding#mode = ""
let g:pandoc#modules#disabled = ["spell", "completion", "keyboard", "executors", "bibliographies", "toc", "hypertext", "menu"]
let g:pandoc#toc#position = "top"
let g:pandoc#syntax#codeblocks#embeds#langs = ["ruby", "literatehaskell=lhaskell", "bash=sh", "python", "r"]
let g:pandoc#syntax#conceal#blacklist = ["codeblock_start", "codeblock_delim"]
let g:pandoc#syntax#conceal#use=0
let g:vim_markdown_math = 0
]]
