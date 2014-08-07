## Help in vim
use :ctrl-] to follow the link in vim help doc.

## Browsing programs with tags

http://vim.wikia.com/wiki/Browsing_programs_with_tags


When editing programs, there is often a need to jump to another location, for 
example, to see how a function is defined. To help, Vim uses a tags file that 
lists each word you are likely to want, and their locations (file path and line
number). Each wanted word is known as a "tag", for example, each function name 
or global variable may be a tag.

The tags file has to be created by a utility, and has to be updated after 
significant editing has occurred. This tip provides an overview of creating and 
using tags files (for the details, see :help tagsrch.txt).


### Using tags
http://courses.cs.washington.edu/courses/cse451/10au/tutorials/tutorial_ctags.html
Ctrl-]            Jump to the tag underneath the cursor
:ts <tag> <RET>   Search for a particular tag
:tn               Go to the next definition for the last tag
:tp               Go to the previous definition for the last tag
:ts               List all of the definitions of the last tag
Ctrl-t            Jump back up in the tag stack

#### Jumping to a tag

    You can use the 'tag' ex command. For example, the command ':tag <tagname>' 
    will jump to the tag named <tagname>.
    You can position the cursor over a tag name and then press Ctrl-].
    You can visually select a text and then press Ctrl-] to jump to the tag
    matching the selected text.
    You can click on the tag name using the left mouse button, while pressing 
    the <Ctrl> key.
    You can press the g key and then click on the tag name using the left mouse button.
    You can use the 'stag' ex command, to open the tag in a new window. For example,
    the command ':stag func1' will open the func1 definition in a new window.
    You can position the cursor over a tag name and then press Ctrl-W ]. This 
    will open the tag location in a new window. 

Help: :tag, Ctrl-], v_CTRL_], <C-LeftMouse>, g<LeftMouse>, :stag, Ctrl-W_]

#### How do I jump to a particular tag match, if there are multiple matching tags?

    You can use the 'tselect' ex command to list all the tag matches. For example,
    the command ':tselect func1' will list all the locations where func1 is defined.
    You can then enter the number of a tag match to jump to that location.
    You can position the cursor over the tag name and press g] to get a list of matching tags.
    You can visually select a text and press g] to get a list of matching tags.
    You can use the 'stselect' ex command. This will open the selected tag from the
    tag list in a new window.
    You can position the cursor over the tag name and press Ctrl-W g] to do a :stselect. 

Help: tag-matchlist, :tselect, g], v_g], :stselect, Ctrl-W_g]

#### Returning after a tag jump

    You can use the 'pop' ex command.
    You can press Ctrl-t.
    You can click the right mouse button, while pressing the <Ctrl> key.
    You can press the g key and then click the right mouse button. 

Help: :pop, Ctrl-T, <C-RightMouse>, g<RightMouse>

#### How do I jump again to a previously jumped tag location?

    You can use the 'tag' ex command to jump to a previously jumped tag location,
    which is stored in the tag stack. 

Help: tag

#### How do I list the contents of the tag stack?

    Vim remembers the location from which you jumped to a tag in the tag stack. 
    You can list the current tag stack using the 'tags' ex command. 

Help: :tags, tagstack

#### I want to jump to a tag, if there is only one matching tag, otherwise a 
list of matching tags should be displayed. How do I do this?

There are several ways to make Vim to jump to a tag directly, if there is only 
one tag match, otherwise present a list of tag matches.

    You can use the 'tjump' ex command. For example, the command ':tjump func1' 
    will jump to the definition func1, if it is defined only once. If func1 is 
    defined multiple times, a list of matching tags will be presented.
    You can position the cursor over the tag and press g Ctrl-].
    You can visually select a text and press g Ctrl-] to jump or list the matching tags.
    You can use the 'stjump' ex command. This will open the matching or selected
    tag from the tag list in a new window.
    You can press Ctrl-W g Ctrl-] to do a :stjump. 

Help: :tjump, g_Ctrl-], v_g_CTRL-], :stjump, Ctrl-W_g_Ctrl-]

#### How do browse through a list of multiple tag matches?

If there are multiple tag matches, you can browse through all of them using
several of the Vim ex commands.

    To go to the first tag in the list, use the 'tfirst' or 'trewind' ex command.
    To go to the last tag in the list, use the 'tlast' ex command.
    To go to the next matching tag in the list, use the 'tnext' ex command.
    To go to the previous matching tag in the list, use the 'tprevious' or 'tNext' ex command. 

Help: :tfirst, :trewind, :tlast, :tnext, :tprevious, :tNext

#### How do I preview a tag?

You can use the preview window to preview a tag, without leaving the original window.
There are several ways to preview a tag:

    You can use the 'ptag' ex command to open a tag in the preview window.
    You can position the cursor on a tag name and press Ctrl-W } to open the tag in the preview window.
    You can use the 'ptselect' ex command to do the equivalent of the 'tselect' ex command in the preview window.
    You can use the 'ptjump' ex command to do the equivalent of the 'tjump' ex command in the preview window.
    You can position the cursor on the tag and press Ctrl-W g} to do a :ptjump on the tag. 

Help: :preview-window, :ptag, Ctrl-W_}, :ptselect, :ptjump, Ctrl-W_g}

#### How do I browse through the tag list in a preview window?

If there are multiple tag matches, you can browse through all of them in the preview window using several of the Vim ex commands.

    To go to the first tag in the list, use the 'ptfirst' or 'ptrewind' ex command.
    To go to the last tag in the list, use the 'ptlast' ex command.
    To go to the next matching tag in the list, use the 'ptnext' ex command.
    To go to the previous matching tag in the list, use the 'ptprevious' or 'ptNext' ex command. 

Help: :ptfirst, :ptrewind, :ptlast, :ptnext, :ptprevious, :ptNext

#### How do I start Vim to start editing a file at a given tag match?

While starting Vim, you can use the command line option '-t' to supply a tag name.
Vim will directly jump to the supplied tag location.

Help: -t

#### How do I list all the tags matching a search pattern?

There are several ways to go through a list of all tags matching a pattern.

    You can list all the tags matching a particular regular expression pattern by
    prepending the tag name with the '/' search character. For example, 

:tag /<pattern>
:stag /<pattern>
:ptag /<pattern>
:tselect /<pattern>
:tjump /<pattern>
:ptselect /<pattern>
:ptjump /<pattern>

    If you have the 'wildmenu' option set, then you can press the <Tab> key to 
    display a list of all the matching tags in the status bar. You can use the 
    arrow keys to move between the tags and then use the Enter key to select a tag.
    If you do not have the 'wildmenu' option set, you can still use the <Tab> key to browse through the list of matching tags. 

Help: tag-regexp, wildmenu

What options are available to control how Vim handles the tags file?

You can use the following options to control the handling of tags file by Vim:

    'tagrelative' - Controls how the file names in the tags file are treated. When on, the filenames are relative to the directory where the tags file is present.
    'taglength' - Controls the number of significant characters used for recognizing a tag.
    'tagbsearch' - Controls the method used to search the tags file for a tag. If this option is on, binary search is used to search the tags file. Otherwise, linear search is used.
    'tagstack' - Controls how the tag stack is used. 

Help: 'tagrelative', 'taglength', 'tagbsearch', 'tagstack'

Is it possible to highlight all the tags in the current file?

Yes. Read the Vim online help on "tag-highlight".

Is there a workaround to make the Ctrl-] key not to be treated as the telnet escape character?

The default escape characters for telnet in Unix systems is Ctrl-]. While using Vim in a telnet session, if you use Ctrl-] to jump to a tag, you will get the telnet prompt. There are two ways to avoid this problem:

    Map the telnet escape character to some other character using the "-e <escape character>" telnet command line option
    Disable the telnet escape character using the "-E" telnet command line option. 

Help: telnet-CTRL-]
Tools to create a tags fileEdit

Often Exuberant Ctags (or other ctags program) is used to create the required tags file. However, many other custom scripts or tools are used for the occasions when ctags is not suitable.

Exuberant Ctags may already be present on your system (in a directory of your PATH). The current version should be used (version 5.8, dated 9 July 2009, as at July 2009; version 5.7 also works well).

Exuberant Ctags has built-in support for 34 different programming languages, and can be extended to support others. Some alternatives are listed below, but it is better to use Exuberant Ctags unless you know that your circumstances require something else. :help ctags

    IDL: idltags
    Java: jtags
    Perl: ptags
    Python: utility Tools/scripts/ptags.py under your Python distribution.
    Verilog: vtags or veri-tags
    C, C++, LaTeX, maple, vim, yacc, assembly: Hdrtag
    LaTeX, BibTeX: modified Exuberant Ctags
    Perl or shell script: pltags.pl or shtags.pl provided with Vim (directory $VIMRUNTIME/tools)
    Erlang: This page contains a Vim command to generate Erlang tags.
    CoffeeScript: This ruby gem contains a ruby cli tool to generate tags for CoffeeScript. Src is on github 

Extending Exuberant CtagsEdit

Following is an example of defining a language for Exuberant Ctags. IDL (Interactive Data Language) procedures and functions are supported by putting the following in your .ctags file:

--langdef=IDL
--langmap=IDL:.pro
--regex-IDL=/^pro[ \t]+([a-zA-Z0-9_:]+)/\1/p,procedure/i
--regex-IDL=/^function[ \t]+([a-zA-Z0-9_:]+)/\1/f,function/i

Other examples, including for LaTeX, are in the documentation for the taglist plugin.
Creating a tags file using ctagsEdit

You may need the current version of Exuberant Ctags for these commands.

Generate a tags file for all C files in the current directory:

$ ctags *.c

Same, processing the current directory and all subdirectories:

$ ctags -R .

Generate a tags file for all files listed in file flist:

$ ctags -L flist

Configuring VimEdit

Vim needs to be told where to look for your tags files, using the 'tags' option. :help 'tags' :help tags-option

:set tags=/my/dir/tags

The 'tags' option can specify more than one tags file:

:set tags=/my/dir1/tags,/my/dir2/tags

In a large project, it is common to have a tags file in each directory (with each tags file handling the files in its directory). To assist, there is a special case: If a file specified in 'tags' starts with "./", the '.' is replaced with the path of the current file.

With this setting, the tags file is in the directory of the current file (no matter what the current directory is). You can define which tag file is searched first: In the current directory ("tags,./tags"), or in the directory of the current file ("./tags,tags"). You might also consider setting your working directory to the current file.

With the following setting, Vim will search for the file named 'tags', starting with the directory of the current file and then going to the parent directory and then recursively to the directory one level above, till it either locates the 'tags' file or reaches the root directory. :help tags-option :help file-searching

:set tags=./tags;

PluginsEdit

    taglist source code browser plugin; uses ctags to display a list of tags for the current file in a menu
    Tagbar similar to taglist but displays tags sorted by their scope like classes etc.
    yate makes search in tags more convenient. It holds query and search result in one buffer for faster jump to desired tag.
    easytags.vim (script#3114) automatically creates a global tags file and keeps it up-to-date as you edit files in Vim. The tags are also used to perform dynamic syntax highlighting of user-defined functions and types. 

See alsoEdit

    79 Use grep to get a clickable list of function names
    404 Tags for Mixed Assembly and C
    558 Using TagList for ANT build files
    568 Use temporary tags file when browsing new source
    711 Tags generation for current file
    804 Single tags file for a source tree
    840 Show tags in a separate preview window
    858 Setting tags when working with multiple source branches
    1299 Autocmd to update ctags file
    1608 C++ code completion
    including tags from external libraries or Ruby "gems" 

CommentsEdit

 TO DO 

    too wordy, let us make it more concise
    add :help links 

There is an excellent tutorial on using cscope with Vim, from installing to becoming an expert.

TagMenu has been moved to http://members.rogers.com/jayglanville/tagsmenu/

For C++, use ctags with "--extra=+q" to qualify member function/variable with its class type.

Vim is nice to use with cscope and ctags. For this purpose, put this in your vimrc (follow strings):

map [I :cs find c <C-r><C-w><CR>
set csto=1

Before editing:

ctags -R
cscope -R -b




##Edit multiple files
http://stackoverflow.com/questions/53664/how-to-effectively-work-with-multiple-files-in-vim

###Tabs (introduced in Vim 7)
:tabe <filepath> you can add a new tab

gvim -p main.plmaintenance.pl will open these two files in tabs.

regular :q or :wq you close a tab. ZZ also can be used instead of :wq

switch between tabs with :tabn and :tabp        
gt goes to the next tab, and gT goes to the previous tab      
can jump to any tab by using ngt, where n is the index of the tab (beginning with one).

If you map :tabn and :tabp to your F7/F8 keys you can easily switch between files.

if you already have existing buffers, you can :tabnew, and in the new tab enter :b2 , for example.

###Not tabs
To see a list of current buffers, I use  :ls
:e ../myFile.pl              To open a new file
you can also use :find which will search a set of paths for you, but you need to customize those paths first.


To switch between all open files, I use
:b myfile
with enhanced tab completion (still set wild menu).

:b# choses the last visited file, so you can use it to switch quickly between two files.
:bp previous buffer
:bn next buffer
:bn (n a number) move to nth buffer
:b with tab-key providing auto-completion (awesome !!)
:bw (buffer wipe, remove a buffer)

you can split your screen by entering the number but using sb instead of just b.

If you want to add multiple files from within vim, use arga[dd]
:arga foo.txt bar.txt:arga /foo/bar/*.txt:argadd /foo/bar/*

###Session
you can save sessions of vim
:mksession! ~/today.ses
saves the current open files buffers and settings to ~/today.ses. u can load that session by using
vim -S ~/today.ses
no hassle of remembering where u left of the yesterday ;)


###split windows
:sp <filepath>

Starting vim with a -o or -O flag opens each file in its own split.

Ctrl-W w to switch between open windows, and Ctrl-W h (or j or k or l) to navigate through open windows.
Ctrl-W c to close the current window, and Ctrl-W o to close all windows except the current one.


##Movement
fx, find forward for x
Fx, find backward for x
';' repeating the last f or t command.

N% – Go to the Nth percentage line of the file.

* go to next place of the word under cursor
# like *, but reverse

0 go to beginning of the line
^ go to the first no-whitespace char in the line      
g_  go to the last no-whitspace char in the line

### word motions
:help word-motions
w    words forward, seems go to the beginning of next word
e    forword to the end of word, seems got the end of current or next word
b    words backward

###mark
m{a-zA-Z}               Set mark {a-zA-Z} at cursor position
'{a-z}  `{a-z}          Jump to the mark {a-z} in the current buffer
'{A-Z0-9}  `{A-Z0-9}    To the mark {A-Z0-9} in the file where it was set
:marks
'0 will cause Vim to jump to the 0 mark, which is a "special mark" that represents the last file edited when Vim was exited.
'.  `.                  To the position where the last change was made. 
'<  `<                  To the first line or character of the last selected
'>  `>                  To the last line or character of the last selected
''  ``                  To the position before the latest jump, or where the
                        last "m'" or "m`" command was given.

###jump
go to file under cursor,
    1):gf , open in the same window
    2):<c-w>f , open in a new window
    3):<c-w>gf , open in a new tab

When writing a program, it is helpful to set the 'path' option to list the directories with your include files. 
If there are several files in your 'path' that match the name under the cursor, gf opens the first, while 2gf opens the second
Names containing spaces, you can visually select the name (including the spaces), then type gf

go back to previous file
1) use :ctrl-6, it toggles between two files. same as ":e #"
2) navigate in jump list, use :ctrl-o (can add [count]) for backward, use <tab> or ctrl-i(can add [count]) for forward

:jumps
show jump list. the one begin with '>' is current pos. the number can be used in [count]ctrl-o/i
what will add into jump list, http://usevim.com/2013/02/15/vim-101-jumps/
1) Freely jumping around a file. Example: G
2) Jumping based on the window size. Example: M
3) Text block jumps. Examples: (, ), {, }
and, Searching (/ and ?) and (n, N)

:changes
show change list. this list remember the positions where changes happen. use :g; and :g, to go back and forth. 

###search
search word under cursor, press '*', (you can also add [count])


##Editing
### lower case and upper case
gu{motion}              Make {motion} text lowercase.
gU{motion}              Make {motion} text uppercase.
u   Lowercase the visually-selected text.
gUU Change the current line to uppercase (same as VU).
guu Change the current line to lowercase (same as Vu).
g~              g~{motion}      2  swap case for Nmove text
g~$ Toggle case of all characters to end of line.
g~~ Toggle case of the current line (same as V~).

##select
###text select
This is a series of commands that can only be used while in Visual mode or after an operator. 
aw    "a word", including leading or trailing white space.
iw    "inner word"
aW and iW for WORD, see :help WORD
yiw   yank inner word
y2iw
viw   visual select an inner word, then you can delete or yank

##For coding
###%  
(not need to put cursor exactly on the 'item')   see :help %
Find the next item in this line after or under the
cursor and jump to its match. inclusive motion.
Items can be:
([{}])          parenthesis or (curly/square) brackets
                (this can be changed with the
                'matchpairs' option)
/* */           start or end of C-style comment
#if, #ifdef, #else, #elif, #endif
                C preprocessor conditionals (when the
                cursor is on the # or no ([{
                following)
...

###>> and << 
shift code. :help >>

###gd 
Goto local Declaration. When the cursor is on a local variable.

###K 
Run a program to lookup the keyword under the cursor. default is to launch 'man'.
can use '2K' to look for the specified section of man.

###]p
like p, but consider code indent


##Copy and paste
###normal mode
d{motion}, cut, for example, *dfS* cuts from current cursor to S
y{motion}, copy/yank; *ye*, till the end of work; *y2/foo*, till the 2nd 'foo'
c{motion}, like d{motion}, but enter insert mode
dd, *2dd* is ok
yy, Y also do same; *0y$* also so same; 
cc,
D, for cursor to the end of line
C, just like D, but enter insert mode
x, cut the char under the cursor
s, like x, but enter insert mode

###insert mode
hit CTRL-R {register}. CTRL-R * will insert in the contents of the clipboard 
and CTRL-R " (the unnamed register) inserts the the last delete or yank.

###System's clipboard
The "* and "+ registers are for the system's clipboard (:help registers). 
Depending on your system, they may do different things.

copy system clipboard into vim
CTRL-R, then input *  (test in windows)
copy vim content into system clipboard
select content, "*y   (test in windows)

###registers
"kyy , "kp
"ayy — Replace the contents of register a with the current line.
"Ayy — Append the current line to register a.
:registers
Unnamed register,
register 0 will always contain the most recently yanked text, but never deleted text;
The registers 1 through 9 are for deleted text
small delete register ".
black hole register, referenced with "_
register "% contains the name of the current buffer’s file
the "# register contains the name of the alternate buffer’s file.
register ": contains the most recently executed : command
register / contains the most recent search pattern


##macro

see all macros
:reg

do a macro
@a 
'a' is macro name
5@a
do 5 times

record a macro
qahjklq
'q' starts recording, 'a' is the name, 'hjkl' is the operation, 'q' means ending

##setting and variable
:set textwidth? to show the value of textwidth.
:verbose set textwidth? to show where this value was last set.
:set optiont& reverts option to its default value.
:set autoindent! inverts the option. autoindent becomes noautoindent.
:setlocal , only affect current buffer or window.
For number or string options, :set option is equivalent to :set option?

what is different between let and set
http://stackoverflow.com/questions/9990219/vim-whats-the-difference-between-let-and-set
:set is for setting options, :let for assigning a value to a variable.

print environment variable
:echo $PATH
:echo $MYVIMRC
print variable
:let myvar = $MYVIMRC
:echo myvar


##syntax highlight
good doc, http://www.sbf5.com/~cduan/technical/vi/vi-4.shtml
example, make comments green
:hi Comment ctermfg=green

turn on/off syntax highlight
:syntax on
:syntax off


##others
###increase a number
ctrl-a
http://stackoverflow.com/questions/9848069/vim-columnvise-increment-inside-and-outside

###reload vimrc
if you are editing it, reload it with
:so %
% stands for current file name, see :help current-file
or more general way
:so $MYVIMRC
so stands for source

### input word under cursor in command line
http://stackoverflow.com/questions/48642/how-do-i-specify-the-word-under-the-cursor-on-vims-commandline
in command-line mode, ctrl+r ctrl+w will insert the word under cursor
see :help c_CTRL-R for a listing of all the other special registers

### keyboard mapping, for example what <CR> means in keyboard
:help key-notation

### view currently mapped keys
:nmap
:vmap
...
see :help map

:verbose map which shows where the mapping(s) was defined (see :help map-verbose)

### close a buffer without quit vim
use :bdelete or :bd, the full expression is 
:[N]bd[elete][!]  
:bd[elete][!] [N]
without N, default is current buffer.

### disable automatic comment or indent when paste something into vim
:set formatoptions-=cro
see :help fo-table
http://superuser.com/questions/271023/vim-can-i-disable-continuation-of-comments-to-the-next-line

if want to put it in vimrc, please use bellow line,
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

it is said that C file plugin in vim will overwrite formatoptions option after loading vimrc.
http://stackoverflow.com/questions/6076592/vim-set-formatoptions-being-lost

if vim is opened in terminal, you use :set paste, then vim will do no formatting at all(see Note of :help fo-table).
however :set paste may have some problem in GUI. In GUI, default is "nopaste". see :help paste

anywhere, what is the usage of formatoptions?
it is useful when reformat text. when reformatting, vim will consider the value of formatoptions
command to reformat:
gq
=
==
http://www.cs.swarthmore.edu/help/vim/reformatting.html


