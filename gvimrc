set fileformats=unix,dos                " now we have the unix newline even on windows

" to display chinese in gvim correctly
set guifontwide=NSimSun " http://www.dzhang.com/blog/2013/04/02/displaying-chinese-utf-8-characters-in-gvim-on-windows
let gvimrc_cus = $HOME . "/.gvimrc.custom"
if filereadable(gvimrc_cus)
  " simply "source gvimrc_cus" not work. it seems source will think gvimrc_cus
  " as a file name 
  exec 'source ' . fnameescape(gvimrc_cus)
endif
