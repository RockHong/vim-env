* ~~install ag? finished on windows~~
* support multiple/customer vimrc
* how to match ', " ? how to find unmatched (, {, [, ', " ?
* we can use <c-]> to follow link in help, how to jump back?
* why vim shows "recoding"? how to stop it?
* turn off syntax highlight
* show space 
* DONE multiple vimrc, http://stackoverflow.com/questions/1889602/multiple-vim-configurations 
http://stackoverflow.com/questions/12503405/gvim-change-the-default-working-directory
* when copy below lines into gvimrc
let vimrc_cus = $HOME . "/.vimrc.custom"
if filereadable(vimrc_cus)
  " simply "source vimrc_cus" not work. it seems source will think vimrc_cus
    " as a file name 
      exec 'source ' . fnameescape(vimrc_cus)
      endif
automatic comments happen. It's annoying.
http://vim.wikia.com/wiki/Disable_automatic_comment_insertion


