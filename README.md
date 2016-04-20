Thanks to [pathogen][1] and git, the configuration and plugins of vim can be well
managed and under version control.

## Installation
First you need vim installed. For Linux/cygwin, usually vim is already there.
For Windows, download it from [official site][3].

To make all vim plugins work, you need to install other programs:      
- [ctags][2]     
Use it for some plugins for code completion and symbol finding     
- [the silver searcher][11]      
To use ack.vim plugin on Windows, install it first. One way to install is that
downloading the source, and using make/gcc on cygwin to build.      
- [Ack][12]      
Need it to use ack.vim plugin on Linux. (Though it's also possible to install
it on Windows, and make it as the back-end of ack.vim.)

### Linux/cygwin
Download this repository by using `git clone` or other means. 

Go into the directory of this repository, and run

	./install.sh
	
Test: open vim and enter `,d`. If a window shows up in left side of vim, 
then it proves that vim plugin works.

### Windows 7 
Clone this repository. Move it to HOME directory (for example, 
C:\Users\SomeUser), and rename it to "vimfiles".

Copy "vimfiles/vimrc" to "HOME/_vimrc".

Copy "vimfiles/gvimrc" to "HOME/_gvimrc".

Copy "vimfiles/gvimrc.custom" to "HOME/gvimrc.custom".

## Vim Configuration
Vim configuration like settings and key-mappings can be found in vimrc.

## Plugins

### NERD tree
[NERD tree][4] allows you to explore file-system and to open files and 
directories. 

In vim's normal mode, input `,d` to bring out NERDtree plugin. In NERDtree tree
windows, press `?` to show help. See more help via `:help NERDtree`.

Snapshot
![NERDtree][101]

### ctrlp
[ctrlp][6] can be used to quickly open files. In vim normal mode, enter `Ctrl+P`
to bring out this plugin.

Snapshot
![ctrlp][103]

ctrlp is not powerful for a big project. It says [command-t][7] is faster 
alternate, but it needs Ruby supporting in vim. Liang Jian's [symfind][8] is very
fast for big project, which, however, I am not sure compatible with pathogen
or not.

See more help via `:help ctrlp`.

### Supertab
[Supertab][5] is a vim plugin which allows you to use <Tab> for all your 
insert completion needs.

The following snapshot shows that you input `xyz`, then press `Tab`, supertab 
will help you complete.
![supertab][102]

See more help via `:help supertab` and `:help ins-completion`. 

### omnicppcomplete
Supertab is lightweight completion plugin, while [omnicppcomplete][13] is more
heavy, powerful, and suitable for large C++ projects. A completion begins when 
you enter `.` or `->`. You can also trigger completion in insert mode 
explicitly using `CTRL-X CTRL-O`.

Snapshot
![omnicppcomplete][106] 
 
To let omnicppcomplete/vim knows symbols, ctags needs to be run first. 
Run ctags in vim by `:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .`, or
`Ctrl-F12`. 

See more by `:help omnicppcomplete`.

### ack.vim
[ack.vim][9] is like grep, but it will show its searching result in vim's Quickfix
window, so that you can easily jump to.

Snapshot (searching string "xyz" in current working directory)
![ack.vim][105]

ack.vim needs a back-end program to as its searching engine. In this repository,
ack.vim uses [Ack][12] as the back-end on Linux, and use [the silver searcher][11]
on Windows.

It's slow to search in a very large project. To search symbols in a large project,
you can use ctags or Liang Jian's [symfind][8].

See more help via `:help ack`.

If your system has not ack installed, please refer to [this doc](http://beyondgrep.com/install/).

### tagbar
[tagbar][14] "is a vim plugin for browsing the tags of source code files. It
provides a sidebar that displays the ctags-generated tags of the current file,
ordered by their scope."

tagbar also needs running ctags firstly.

See more help via `:help tagbar`.

### NERDCommenter
Comment code. See more by `:help NERDCommenter`.

## Using ctags
Use ctags to build tags, then you can browser symbols in C++ project.
Run ctags in vim by `:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .`,
or `Ctrl-F12`.
 
	Ctrl-]            Jump to the tag underneath the cursor
	:ts <tag> <RET>   Search for a particular tag
	:tn               Go to the next definition for the last tag
	:tp               Go to the previous definition for the last tag
	:ts               List all of the definitions of the last tag
	Ctrl-t            Jump back up in the tag stack

See more help via `:help tags-and-searches`.

Liang Jian's [symfind][8] is another option for symbol looking up.


## Others

###color scheme
It says *solarized* is good color scheme. There is a [plugin][15] for it.
Maybe you don't need it, if your terminal also has taht color scheme.

###On Windows 7
If encounter problem with `^M`, run the following command in cygwin
(create a new git branch first for more safety),

	$ find . -type f -exec dos2unix '{}' \;


*Feel free to tinker on this repository*



[id]: http://example.com/  "Optional Title Here"
[1]: https://github.com/tpope/vim-pathogen "pathogen"
[2]: http://ctags.sourceforge.net/ "ctags"
[3]: http://www.vim.org/download.php "vim download"
[4]: https://github.com/scrooloose/nerdtree "nerdtree"
[5]: https://github.com/ervandew/supertab "supertab"
[6]: https://github.com/kien/ctrlp.vim "ctrlp"
[7]: https://github.com/wincent/Command-T "command-t"
[8]: http://www.vim.org/scripts/script.php?script_id=4637 "symfind"
[9]: https://github.com/mileszs/ack.vim "ack vim"
[10]: https://github.com/rking/ag.vim "ag vim"
[11]: https://github.com/ggreer/the_silver_searcher "The Silver Searcher"
[12]: http://beyondgrep.com/install/ "ack"
[13]: https://github.com/vim-scripts/OmniCppComplete "OmniCppComplete"
[14]: https://github.com/majutsushi/tagbar "tagbar"
[15]: https://github.com/altercation/vim-colors-solarized "vim-colors-solarized"

[101]: images/snap-nerdtree.PNG  "snapshot nerdtree"
[102]: images/snap-supertab.PNG  "snapshot supertab"
[103]: images/snap-ctrlp.PNG  "snapshot ctrlp"
[105]: images/snap-ack.PNG  "snapshot ack.vim"
[106]: images/snap-omnicppcomplete.PNG  "snapshot omnicppcomplete"
