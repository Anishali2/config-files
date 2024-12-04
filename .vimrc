
" Install UltiSnips for snippets
Plug 'SirVer/ultisnips'

" Optional: Install common snippets for many languages
Plug 'honza/vim-snippets'

call plug#end()

let g:UltiSnipsExpandTrigger="<C-j>"
imap jf <Esc> 
imap fj <Esc> 
inoremap jf <Esc>
nnoremap ; diw
nnoremap <F4> :%y+<CR>
nnoremap ' ggVG
" set scroll=55
nmap R <c-n>:%s///g<left><left>
nnoremap n `
nnoremap ` n
inoremap <special> jk <Esc>


nnoremap cc da'a <left><left>i18n._(t``) <left><left><left><Esc>pxF'x
nnoremap sw F><right>vf<<left>d <left>i{i18n._(t``)} <left><left><left><left><Esc>p
nnoremap ss da'a <left><left>{i18n._(t``)} <left><left><left><left><Esc>pxF'x
nnoremap sa da"a <left>{i18n._(t``)} <left><left><left><left><Esc>pxF"x
nnoremap si $F":put +<cr>
nnoremap su 0f"<right>vf"<left><c-c>
" nnoremap ui aimport React from 'react'<Esc>oexport default async function Page() a<Esc>r{<Esc>oconst response = await fetcha<Esc>r(a'http://localhost:1024/<Esc><right>a,{<Esc>o) <Esc>o  return a<Esc>r(<Esc>o<> <Esc>ooss<Esc>For<<right>r/<right>r>o  )<Esc>o}<Esc>oexport default Page<Esc>o
nnoremap ui oimport React from 'react';<CR>export default async function Page() {<CR>const response = await fetch('http://localhost:1024/students', {<CR>method: 'GET',<CR>cache: 'no-cache',<CR>headers: {<CR>'Content-Type': 'application/json',<CR>}<CR>}).then((res) => res.json())<CR>return (<CR><><CR></><CR>)<CR>}<CR>export default Page;<CR>

" const response = await fetch('http://localhost:1024/students', {
"     method: 'GET',
"     cache: 'no-cache',
"     headers: {
"       'Content-Type': 'application/json'
"     }
"   }).then((res) => res.json())
" <Esc>o  )<Esc>o}<Esc>oexport default Page<Esc>o
nnoremap <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/
" nnoremap st i const [ypiyob , set ypiyob] = useState()<ESc>0fydiw/ypiyob
" <Enter>:%s///g<left><left>
nnoremap N mz:m+<cr>
nnoremap tn :tabnew<cr>
nnoremap to :tabonly<cr>
nnoremap tc :tabclose<cr>
nnoremap tm :tabmove

nnoremap sk :m'>+<cr>`<my`>mzgv`yo`
nnoremap ci  <C-C>
nnoremap sc o console.log("=>",)<left>
nnoremap st o const [ ,set ] = useState()<Esc>F[a
" inoremap z. <Esc>F[lveyf,lllpF,llll~f(a

