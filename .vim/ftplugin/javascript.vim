setl foldmethod=indent
setl foldnestmax=1

if exists("+omnifunc")
    setl omnifunc=javascriptcomplete#CompleteJS
endif

setl keywordprg=sh\ -c\ 'xdg-open\ https://devdocs.io/\\#q=\$1\ '\ --

let b:ale_fixers = ['prettier']
let b:ale_linters_ignore = ['prettier']
let b:ale_javascript_prettier_use_local_config = 1
let b:ale_javascript_eslint_options = "--rule 'prettier/prettier: 0'"

let g:tagbar_type_javascript = {
    \ 'kinds': [
        \ 'V:variables',
        \ 'A:arrays',
        \ 'C:classes',
        \ 'E:exports',
        \ 'F:functions',
        \ 'G:generators',
        \ 'I:imports',
        \ 'M:methods',
        \ 'P:properties',
        \ 'O:objects',
        \ 'T:tags',
    \ ],
\ }

" (Req's my split/join plugin & mappings.)
let _sort_es6_imports = 'f{\js,i{vi{!sort\jj,i{kJJ'

let _namespace_action = 'f:wa=expand("%:t:r")/gui'
let _namespace_all_actions = 'vi{:QQ g:_namespace_action'

" (Req's my Caser and surround mappings.)
let _css_to_js = '0w\wct:ww\s''$hxpr,'
let _js_to_css = 'w\wkwf''xf''xr;'
