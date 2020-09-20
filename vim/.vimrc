"Indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set expandtab

"hardmode
noremap <Up> <Down> <Left> <Right> <Nop>

"Other
set number
set relativenumber
set wildmenu
set nocompatible
syntax on

set path+=**

augroup Latex
  " Load template
  "au BufNewFile *.tex 0r ~/.vim/templates/skeleton.tex
  
  " Load colorscheme 
  "au BufReadPre *.tex colorscheme dracula
 
 " Compile on write
  au BufWritePost main.tex silent execute "!sh $HOME/.vim/scripts/auto_latex %:t %:p:r --display"
 
 " Close upon leave
  au VimLeave main.tex execute "!sh $HOME/.vim/scripts/auto_latex %:t %:p:r --clean"
augroup end

"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words
