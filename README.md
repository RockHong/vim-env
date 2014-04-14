###Install
Download this repository by using `git clone` or other means. 

Go into the directory of this repository, and run

	./install.sh
	
Test: open vim and enter `,d`. If a window like file explorer(NERDtree plugin) shows up, 
then it works.


###pathogen & git
The *pathogen* plugin is used to manage other plugins of vim, and *git* is used to version control.

###ctags
Some plugins for code completion asks ctags installed in your system. To let ctags generate
tags/symbols for C++ project, ctags uses options in the file `ctags`.

###color scheme
It says *solarized* is good color scheme. You can set it as the color scheme of your terminal.
TODO: link.


##Plugins

###NERD tree
*NERD tree* allows you to explore filesystem and to open files and directories. 
See more by `help NERDtree`.

###Command-T

The *Command-T* plug-in provides an extremely fast, intuitive mechanism for
opening files and buffers with a minimal number of keystrokes. It acts as very fast 
"Go to File" window. See more by `help command-t`.

###NERDCommenter
Comment code. See more by `help NERDCommenter`.

###omnicppcomplete
By using *omnicppcomplete* plugin, vim knows symbols in a C++ project and how to auto-complete
the symbols. A completion begins when you enter '.' or '->'. You can trigger completion in insert mode explictly using CTRL-X CTRL-O.

To let omnicppcomplete/vim knows symbols, it needs help the power of *ctags*. Run ctags in vim by
`:!ctags -R .`. 

See more by `help omnicppcomplete`.

###supertab
This plugin let you complete code using tab. See more by `help supertab`.

###Ack
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


*Feel free to build your Vim enviroment.*