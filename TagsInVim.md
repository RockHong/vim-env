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
    If you don't have the 'wildmenu' option set, you can still use the <Tab> key to browse through the list of matching tags. 

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

    too wordy, let's make it more concise
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


