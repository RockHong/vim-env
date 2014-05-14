###SuperTab     

To start the completion, hitting <Tab> or <S-Tab> (shift+tab) while in insert mode, 
with at least one non whitespace character before the cursor.
  
And then <Tab> or <S-Tab> again to cycle forwards or backwards through the available
completions.

Currently supertab can recognize method calls or attribute references 
via '.', '::' or '->', and file path references containing '/'. 


###omnicppcomplete
In insert mode, you can use CTRL-X CTRL-O to complete.

Completion can be triggered automatically after a '.', '->' or '::'.

map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

Use CTRL-N, CTRL-P to navigate in popup menu. Use BS or CTRL-H to delete. See :help popupmenu-keys.
  
For the color of popup menu, see :help highligh
example is :hi Pmenu ctermfg=Cyan  ctermbg=Blue cterm=None guifg=Cyan 
 
kind of the symbol, possible kinds are :

	* c = classes
	* d = macro definitions
	* e = enumerators (values inside an enumeration)
	* f = function definitions
	* g = enumeration names
	* m = class, struct, and union members
	* n = namespaces
	* p = function prototypes
	* s = structure names
	* t = typedefs
	* u = union names
	* v = variable definitions
        
 
access, possible values are :

	* + = public
	* # = protected
	* - = private
        
Note: Global scope completion only works with a non empty base, 
if you run a completion just after a '::' the completion will fail. 

###CtrlP
It's said CtrlP it's better than Command-T, from http://www.bestofvim.com/plugin/ctrl-p/ and
http://pyjamacoder.com/2013/04/25/getting-fuzzy-with-ctrlp/. So, let's try it.

(Below is just copy and paste from http://kien.github.io/ctrlp.vim/)        
Full path fuzzy file, buffer, mru, tag, ... finder for Vim.

Built-in Most Recently Used (MRU) files monitoring and search.
Built-in project's root finder.
Open multiple files at once.
Create new files and directories.
Execute Ex commands on an opening file (jump to a line, to a string or do anything).
Optional cross-sessions caching and history allow for fast initialization.
Mappings and usage conform to Vim's conventions.

Basic Usage:
Run :CtrlP or :CtrlP [starting-directory] to invoke CtrlP in find file mode.
Run :CtrlPBuffer or :CtrlPMRU to start CtrlP in find buffer or find MRU file mode.
Run :CtrlPMixed to search in Files, Buffers and MRU files at the same time.
Check :help ctrlp-commands and :help ctrlp-extensions for other commands.


Once CtrlP is open:
Run :help ctrlp-mappings or submit ? in CtrlP for more mapping help.
Press <F5> to purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
Press <c-f> and <c-b> to cycle between modes.
Press <c-d> to switch to filename search instead of full path.
Press <c-r> to switch to regexp mode.
Use <c-j>, <c-k> or the arrow keys to navigate the result list.
Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
Use <c-y> to create a new file and its parent directories.
Use <c-z> to mark/unmark multiple files and <c-o> to open them.

Submit two or more dots .. to go up the directory tree by one or multiple levels.
End the input with a colon : followed by a command to execute it after opening the file:
Use :25 to jump to line 25.
Use :/any\:\ string to jump to the first instance of any: string.
Use :+setfiletype\ myfiletype|25 to set the filetype to myfiletype then jump to line 25.
Use :diffthis when opening files marked by <c-z> to run :diffthis on the first 4 files.


Basic Options:
Check :help ctrlp-options for options.

###Command-T
<leader>b :CommandTBuffer<CR>
<leader>t :CommandT<CR>
<leader>T :CommandTFlush<CR>:CommandT<CR>

:CommandT ../path/to/other/files

The following mappings are active when the prompt has focus:

    <Tab>       change focus to the file listing
    
    <BS>        delete the character to the left of the cursor
    <Del>       delete the character at the cursor
    <C-a>       move the cursor to the start (left)
    <C-e>       move the cursor to the end (right)
    <C-h>       move the cursor one character to the left
    <C-l>       move the cursor one character to the right   
    <C-u>       clear the contents of the prompt     
    <Left>      move the cursor one character to the left
    <Right>     move the cursor one character to the right


The following mappings are active when the file listing has focus:

    <Tab>       change focus to the prompt

The following mappings are active when either the prompt or the file listing
has focus:

    <C-c>       cancel (dismisses file listing)

    <CR>        open the selected file
    <C-CR>      open the selected file in a new split window
    <C-s>       open the selected file in a new split window
    <C-v>       open the selected file in a new vertical split window
    <C-t>       open the selected file in a new tab
    <C-j>       select next file in the file listing
    <C-n>       select next file in the file listing
    <Down>      select next file in the file listing
    <C-k>       select previous file in the file listing
    <C-p>       select previous file in the file listing
    <Up>        select previous file in the file listing
    <C-f>       flush the cache (see |:CommandTFlush| for details)
    <C-q>       place the current matches in the quickfix window


The following is also available on terminals which support it:

    <Esc>       cancel (dismisses file listing)

  |g:CommandTMaxFiles|                           number (default 30000)
  |g:CommandTMaxDepth|                           number (default 15)
  |g:CommandTFileScanner|                        string (default: 'ruby') 
 


Vim's |'wildignore'| setting is used to determine which files should be
excluded from listings    
:set wildignore+=*.o,*.obj,.git


If you want to influence Command-T's file exclusion behavior without
changing your global |'wildignore'| setting, you can use the |g:CommandTWildIgnore| 

TIPS     
let g:CommandTMaxFiles = 500000
let g:CommandTInputDebounce = 200
let g:CommandTMaxCachedDirectories = 10


###NERDTree

:NERDTreeToggle [< start-directory > | < bookmark >]       
<leader>d

:NERDTreeMirror        
Shares an existing NERD tree, from another tab, in the current tab.

:NERDTreeFind                    
<leader>f Find the current file in the tree.    

:NERDTreeCWD                            
Change tree root to current directory.
    
:Bookmark <name>    
Bookmark the current node as <name>. 
    
:ClearBookmarks [<bookmarks>]


?.......Toggle the display of the quick help.....................|NERDTree-?|


o.......Open files, directories and bookmarks....................|NERDTree-o|
<CR>...............same as |NERDTree-o|.
t.......Open selected node/bookmark in a new tab.................|NERDTree-t|
i.......Open selected file in a split window.....................|NERDTree-i|
s.......Open selected file in a new vsplit.......................|NERDTree-s|
O.......Recursively open the selected directory..................|NERDTree-O|


go......Open selected file, but leave cursor in the NERDTree.....|NERDTree-go|
T.......Same as 't' but keep the focus on the current tab........|NERDTree-T|
gi......Same as i, but leave the cursor on the NERDTree..........|NERDTree-gi|
gs......Same as s, but leave the cursor on the NERDTree..........|NERDTree-gs|


K.......Jump up inside directories at the current tree depth.....|NERDTree-K|
J.......Jump down inside directories at the current tree depth...|NERDTree-J|
P.......Jump to the root node....................................|NERDTree-P|
p.......Jump to current nodes parent.............................|NERDTree-p|
x.......Close the current nodes parent...........................|NERDTree-x|
X.......Recursively close all children of the current node.......|NERDTree-X|
m.......Display the NERD tree menu...............................|NERDTree-m|
A.......Zoom (maximize/minimize) the NERDTree window.............|NERDTree-A|
<C-J>...Jump down to the next sibling of the current directory...|NERDTree-C-J|
<C-K>...Jump up to the previous sibling of the current directory.|NERDTree-C-K|
e.......Edit the current dir.....................................|NERDTree-e|



D.......Delete the current bookmark .............................|NERDTree-D|
C.......Change the tree root to the selected dir.................|NERDTree-C|
u.......Move the tree root up one directory......................|NERDTree-u|
U.......Same as 'u' except the old root node is left open........|NERDTree-U|
r.......Recursively refresh the current directory................|NERDTree-r|
R.......Recursively refresh the current root.....................|NERDTree-R|
cd......Change the CWD to the dir of the selected node...........|NERDTree-cd|
CD......Change tree root to the CWD..............................|NERDTree-CD|
I.......Toggle whether hidden files displayed....................|NERDTree-I|
f.......Toggle whether the file filters are used.................|NERDTree-f|
F.......Toggle whether files are displayed.......................|NERDTree-F|
B.......Toggle whether the bookmark table is displayed...........|NERDTree-B|
q.......Close the NERDTree window................................|NERDTree-q|


|'NERDTreeIgnore'| 
|'NERDTreeShowBookmarks'|  
|'NERDTreeShowHidden'| 
|'NERDTreeWinSize'| 


###ack
*Ack* is like grep, but it will show its searching result in vim's Quickfix window, so that you
can easily jump to.

The following keyboard shortcuts are available in the quickfix window:

	o                   open file (same as enter).
	
	O                   open file and close quickfix window.
	
	go                  preview file (open but maintain focus on ack.vim results).
	
	t                   open in a new tab.
	
	T                   open in new tab silently.
	
	h                   open in horizontal split.
	
	H                   open in horizontal split silently.
	
	v                   open in vertical split.
	
	gv                  open in vertical split silently.
	
	q                   close the quickfix window.

See more by `help ack`.

###tagbar
nmap <leader>] :TagbarToggle<CR>

Jumping to tags~
moving the cursor to a tag and pressing <Enter> or double-clicking on it with the mouse.

Sorting~
by pressing the "s" key

Folding~
Mappings similar to Vim's built-in ones are provided. Folds can
also be opened and closed by clicking on the fold icon with the mouse.

Displaying the prototype of a tag~
pressing <Space> when on a tag or hovering over a tag with the mouse. In the former
case the prototype will be displayed in the |Command-line|, in the latter case
it will be displayed in a pop-up window. 


The following mappings are valid in the Tagbar window:

<F1>/?        Display key mapping help.
                Map option: tagbar_map_help
<CR>/<Enter>  Jump to the tag under the cursor. Doesn't work for pseudo-tags
              or generic headers.
                Map option: tagbar_map_jump
p             Jump to the tag under the cursor, but stay in the Tagbar window.
                Map option: tagbar_map_preview
P             Open the tag in a |preview-window|.
                Map option: tagbar_map_previewwin
<LeftMouse>   When on a fold icon, open or close the fold depending on the
              current state.
<2-LeftMouse> Same as <CR>. See |g:tagbar_singleclick| if you want to use a
              single- instead of a double-click.
<C-N>         Go to the next top-level tag.
                Map option: tagbar_map_nexttag
<C-P>         Go to the previous top-level tag.
                Map option: tagbar_map_prevtag
<Space>       Display the prototype of the current tag (i.e. the line defining
              it) in the command line.
                Map option: tagbar_map_showproto
v             Hide tags that are declared non-public. Tags without any
              visibility information will still be shown.
                Map option: tagbar_map_hidenonpublic
+/zo          Open the fold under the cursor.
                Map option: tagbar_map_openfold
-/zc          Close the fold under the cursor or the current one if there is
              no fold under the cursor.
                Map option: tagbar_map_closefold
o/za          Toggle the fold under the cursor or the current one if there is
              no fold under the cursor.
                Map option: tagbar_map_togglefold
*/zR          Open all folds by setting foldlevel to 99.
                Map option: tagbar_map_openallfolds
=/zM          Close all folds by setting foldlevel to 0.
                Map option: tagbar_map_closeallfolds
s             Toggle sort order between name and file order.
                Map option: tagbar_map_togglesort
x             Toggle zooming the window.
                Map option: tagbar_map_zoomwin
q             Close the Tagbar window.
                Map option: tagbar_map_close

###NERDCommenter
[count]|<Leader>|cs |NERDComSexyComment|
Comments out the selected lines ``sexily''

[count]|<Leader>|cm |NERDComMinimalComment|
Comments the given lines using only one set of multipart delimiters.

[count]|<Leader>|cc |NERDComComment|
Comment out the current line or text selected in visual mode.

|<Leader>|c$ |NERDComEOLComment|
Comments the current line from the cursor to the end of line.

[count]|<Leader>|cn |NERDComNestedComment|
Same as |<Leader>|cc but forces nesting.

[count]|<Leader>|c<space> |NERDComToggleComment|
Toggles the comment state of the selected line(s). If the topmost selected
line is commented, all selected lines are uncommented and vice versa.

[count]|<Leader>|ci |NERDComInvertComment|
Toggles the comment state of the selected line(s) individually.

[count]|<Leader>|cy |NERDComYankComment|
Same as |<Leader>|cc except that the commented line(s) are yanked first.


|<Leader>|cA |NERDComAppendComment|
Adds comment delimiters to the end of line and goes into insert mode between
them.


|NERDComInsertComment|
Adds comment delimiters at the current cursor position and inserts between.
Disabled by default.


[count]|<Leader>|cl
[count]|<Leader>|cb    |NERDComAlignedComment|
Same as |NERDComComment| except that the delimiters are aligned down the
left side (|<Leader>|cl) or both sides (|<Leader>|cb).


[count]|<Leader>|cu |NERDComUncommentLine|
Uncomments the selected line(s).


    
###others
Strip trailing spaces using, <leader><space>




   
