    1  which vim
    2  cd
    3  ls
    4  ls -a
    5  ls
    6  ls .vim
    7  cd
    8  cd tmp
    9  cd
   10  mkdir tmp
   11  cd tmp
   12  ls
   13  vim xxx.xxx
   14  cd 
   15  vim --version
   16  vim --version | grep ruby
   17  vim --version | grep python
   18  ls
   19  cd
   20  mkdir .vim
   21  ls
   22  cd .vim
   23  ls
   24  touch vimrc
   25  touch gvimrc
   26  git init
   27  which yum
   28  which ls
   29  which yum
   30  yum list git
   31  yum list vim
   32  yum search git
   33  zypper se git
   34  man zypper
   35  zypper install git
   36  sudo zypper install git
   37  which git
   38  cd
   39  ls
   40  cd .vim/
   41  ls
   42  gti init
   43  git init
   44  git status
   45  git add .
   46  git status
   47  git commit -m 'initial commit'
   48  ls
   49  mkdir autoload bundle
   50  ls
   51  curl -Sso autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
   52  ls -R
   53  ls
   54  vim vimrc
   55  git status
   56  git add .
   57  git status
   58  git commit -m 'add plugin pathogen'
   59  git log
   60  ls
   61  pwd
   62  vim README.md
   63  git add README.md 
   64  git commit -m 'add readme.md'
   65  git log
   66  git config --global user.name 'Hong'
   67  git config --global user.email hongzhihua@gmail.com
   68  git log
   69  ls
   70  vim README.md 
   71  cd bundle/
   72  ls
   73  git clone https://github.com/scrooloose/nerdtree.git
   74  vim
   75  ls
   76  ls -R
   77  ls
   78  cd nerdtree/
   79  ls
   80  vim
   81  git status
   82  cd ..
   83  git status
   84  cd ..
   85  git status
   86  cd bundle/nerdtree/
   87  git status
   88  cd ..
   89  ls
   90  touch history.md
   91  git status
   92  git diff
   93  git add bundle/
   94  git status
   95  git diff --cached
   96  git help add
   97  git diff --cached
   98  ls -a
   99  git commit -m 'add nerdtree'
  100  git log
  101  ls
  102  git status
  103  git add README.md 
  104  history >> history.md 
----0331---
    1  which vim
    2  cd
    3  ls
    4  ls -a
    5  ls
    6  ls .vim
    7  cd
    8  cd tmp
    9  cd
   10  mkdir tmp
   11  cd tmp
   12  ls
   13  vim xxx.xxx
   14  cd 
   15  vim --version
   16  vim --version | grep ruby
   17  vim --version | grep python
   18  ls
   19  cd
   20  mkdir .vim
   21  ls
   22  cd .vim
   23  ls
   24  touch vimrc
   25  touch gvimrc
   26  git init
   27  which yum
   28  cd
   29  cd tmp
   30  mkdir xxx
   31  cd xxx
   32  ls
   33  git init
   34  ls
   35  git clone https://github.com/scrooloose/nerdtree.git
   36  git status
   37  git add nerdtree/
   38  git status
   39  git help add
   40  cd
   41  ls .ssh/
   42  ls
   43  ls .ssh
   44  cd .ssh/
   45  ls
   46  ssh-keygen -t rsa -C "hongzhihua@gmail.com"
   47  ls
   48  cat id_rsa.pub
   49  which ls
   50  which yum
   51  yum list git
   52  yum list vim
   53  yum search git
   54  zypper se git
   55  man zypper
   56  zypper install git
   57  sudo zypper install git
   58  which git
   59  cd
   60  ls
   61  cd .vim/
   62  ls
   63  gti init
   64  git init
   65  git status
   66  git add .
   67  git status
   68  git commit -m 'initial commit'
   69  ls
   70  mkdir autoload bundle
   71  ls
   72  curl -Sso autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
   73  ls -R
   74  ls
   75  vim vimrc
   76  git status
   77  git add .
   78  git status
   79  git commit -m 'add plugin pathogen'
   80  git log
   81  ls
   82  pwd
   83  vim README.md
   84  git add README.md 
   85  git commit -m 'add readme.md'
   86  git log
   87  git config --global user.name 'Hong'
   88  git config --global user.email hongzhihua@gmail.com
   89  git log
   90  ls
   91  vim README.md 
   92  cd bundle/
   93  ls
   94  git clone https://github.com/scrooloose/nerdtree.git
   95  vim
   96  ls
   97  ls -R
   98  ls
   99  cd nerdtree/
  100  ls
  101  vim
  102  git status
  103  cd ..
  104  git status
  105  cd ..
  106  git status
  107  cd bundle/nerdtree/
  108  git status
  109  cd ..
  110  ls
  111  touch history.md
  112  git status
  113  git diff
  114  git add bundle/
  115  git status
  116  git diff --cached
  117  git help add
  118  git diff --cached
  119  ls -a
  120  git commit -m 'add nerdtree'
  121  git log
  122  ls
  123  git status
  124  git add README.md 
  125  history >> history.md 
  126  git add history.md 
  127  head history.md 
  128  git status
  129  git commit -m 'add history'
  130  git remote add origin git@github.com:RockHong/vim-env.git
  131  git push -u origin master
  132  git status
  133  cd
  134  ls
  135  cd .vim
  136  ls
  137  git clone git://git.wincent.com/command-t.git bundle/command-t
  138  git clone https://github.com/wincent/command-t.git  bundle/command-t
  139  ls -a bundle/
  140  git clone https://github.com/wincent/Command-T.git  bundle/command-t
  141  git status
  142  git clone https://github.com/wincent/Command-T.git  bundle/command-t
  143  git status
  144  git add bundle/command-t/
  145  git status
  146  git commit -m 'add commit-t, not build'
  147  ls
  148  cat history.md | grep clone
  149  ls
  150  ls autoload/
  151  rm -rf bundle/nerdtree/
  152  git status
  153  git rm bundle/nerdtree 
  154  git status
  155  git commit -m 'it looks nerdtree is added as a submodule, delete it..'
  156  git status
  157  cat history.md | grep clone
  158  git clone https://github.com/scrooloose/nerdtree.git bundle/nerdtree
  159  git status
  160  git add bundle/nerdtree/
  161  git commit -m 'add nerdtree'
  162  vim
  163  git status
  164  ls
  165  cd bundle/command-t/ruby/command-t/
  166  ls
  167  ruby extconf.rb 
  168  which ruby
  169  man zypper
  170  zypper search ruby
  171  zypper search ruby*dev
  172  ruby extconf.rb 
  173  which gcc
  174  zypper in gcc
  175  sudo zypper in gcc
  176  ruby extconf.rb 
  177  which gcc
  178  zypper search ruby-devel
  179  sudo zypper in ruby-devel
  180  ruby extconf.rb 
  181  vim
  182  cd
  183  cd .vim
  184  git status
  185  git clone https://github.com/mileszs/ack.vim.git bundle/ack.vim
  186  git status
  187  git add bundle/ack.vim/
  188  git status
  189  vim
  190  git status
  191  git commit -m 'plugin: ack.vim'
  192  echo '----0331---' >> history.md 
  193  history >> history.md 
----0401---
    1  which vim
    2  cd
    3  ls
    4  ls -a
    5  ls
    6  ls .vim
    7  cd
    8  cd tmp
    9  cd
   10  mkdir tmp
   11  cd tmp
   12  ls
   13  vim xxx.xxx
   14  cd 
   15  vim --version
   16  vim --version | grep ruby
   17  vim --version | grep python
   18  ls
   19  cd
   20  mkdir .vim
   21  ls
   22  cd .vim
   23  ls
   24  touch vimrc
   25  touch gvimrc
   26  git init
   27  which yum
   28  cd
   29  cd tmp
   30  mkdir xxx
   31  cd xxx
   32  ls
   33  git init
   34  ls
   35  git clone https://github.com/scrooloose/nerdtree.git
   36  git status
   37  git add nerdtree/
   38  git status
   39  git help add
   40  cd
   41  ls .ssh/
   42  ls
   43  ls .ssh
   44  cd .ssh/
   45  ls
   46  ssh-keygen -t rsa -C "hongzhihua@gmail.com"
   47  ls
   48  cat id_rsa.pub
   49  which ls
   50  which yum
   51  yum list git
   52  yum list vim
   53  yum search git
   54  zypper se git
   55  man zypper
   56  zypper install git
   57  sudo zypper install git
   58  which git
   59  cd
   60  ls
   61  cd .vim/
   62  ls
   63  gti init
   64  git init
   65  git status
   66  git add .
   67  git status
   68  git commit -m 'initial commit'
   69  ls
   70  mkdir autoload bundle
   71  ls
   72  curl -Sso autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
   73  ls -R
   74  ls
   75  vim vimrc
   76  git status
   77  git add .
   78  git status
   79  git commit -m 'add plugin pathogen'
   80  git log
   81  ls
   82  pwd
   83  vim README.md
   84  git add README.md 
   85  git commit -m 'add readme.md'
   86  git log
   87  git config --global user.name 'Hong'
   88  git config --global user.email hongzhihua@gmail.com
   89  git log
   90  ls
   91  vim README.md 
   92  cd bundle/
   93  ls
   94  git clone https://github.com/scrooloose/nerdtree.git
   95  vim
   96  ls
   97  ls -R
   98  ls
   99  cd nerdtree/
  100  ls
  101  vim
  102  git status
  103  cd ..
  104  git status
  105  cd ..
  106  git status
  107  cd bundle/nerdtree/
  108  git status
  109  cd ..
  110  ls
  111  touch history.md
  112  git status
  113  git diff
  114  git add bundle/
  115  git status
  116  git diff --cached
  117  git help add
  118  git diff --cached
  119  ls -a
  120  git commit -m 'add nerdtree'
  121  git log
  122  ls
  123  git status
  124  git add README.md 
  125  history >> history.md 
  126  git add history.md 
  127  head history.md 
  128  git status
  129  git commit -m 'add history'
  130  git remote add origin git@github.com:RockHong/vim-env.git
  131  git push -u origin master
  132  git status
  133  cd
  134  ls
  135  cd .vim
  136  ls
  137  git clone git://git.wincent.com/command-t.git bundle/command-t
  138  git clone https://github.com/wincent/command-t.git  bundle/command-t
  139  ls -a bundle/
  140  git clone https://github.com/wincent/Command-T.git  bundle/command-t
  141  git status
  142  git clone https://github.com/wincent/Command-T.git  bundle/command-t
  143  git status
  144  git add bundle/command-t/
  145  git status
  146  git commit -m 'add commit-t, not build'
  147  ls
  148  cat history.md | grep clone
  149  ls
  150  ls autoload/
  151  rm -rf bundle/nerdtree/
  152  git status
  153  git rm bundle/nerdtree 
  154  git status
  155  git commit -m 'it looks nerdtree is added as a submodule, delete it..'
  156  git status
  157  cat history.md | grep clone
  158  git clone https://github.com/scrooloose/nerdtree.git bundle/nerdtree
  159  git status
  160  git add bundle/nerdtree/
  161  git commit -m 'add nerdtree'
  162  vim
  163  git status
  164  ls
  165  cd bundle/command-t/ruby/command-t/
  166  ls
  167  ruby extconf.rb 
  168  which ruby
  169  man zypper
  170  zypper search ruby
  171  zypper search ruby*dev
  172  ruby extconf.rb 
  173  which gcc
  174  zypper in gcc
  175  sudo zypper in gcc
  176  ruby extconf.rb 
  177  which gcc
  178  zypper search ruby-devel
  179  sudo zypper in ruby-devel
  180  ruby extconf.rb 
  181  vim
  182  cd
  183  cd .vim
  184  git status
  185  git clone https://github.com/mileszs/ack.vim.git bundle/ack.vim
  186  git status
  187  git add bundle/ack.vim/
  188  git status
  189  vim
  190  git status
  191  git commit -m 'plugin: ack.vim'
  192  echo '----0331---' >> history.md 
  193  history >> history.md 
  194  git diff
  195  git status
  196  git add -u
  197  git commit -m 'history: re-add nerdtree, add command-t, add ack.vim'
  198  git status
  199  git push -u origin master
  200  vim
  201  cd
  202  vim
  203  ls
  204  cd tmp
  205  sl
  206  ls
  207  vim xxx/nerdtree/doc/NERD_tree.txt 
  208  vim
  209  vim 
  210  vim
  211  which ctags
  212  zypper search ctags
  213  ls
  214  git clone git@github.com:RockHong/folly.git
  215  ls
  216  cd
  217  ls
  218  cd .vim
  219  ls
  220  git clone https://github.com/majutsushi/tagbar.git bundle/tagbar
  221  vim 
  222  git status
  223  git add bundle/tagbar/
  224  git status
  225  git commit -m 'add plugin: tagbar'
  226  ls
  227  cd bundle/
  228  ls
  229  cp -r ~/Downloads/xxx/ omnicppcomplete
  230  ls
  231  cd omnicppcomplete/
  232  ls
  233  rm omnicppcomplete-0.41.zip 
  234  ls
  235  vim
  236  git status
  237  cd ..
  238  git status
  239  git add bundle/omnicppcomplete/
  240  git status
  241  cat bundle/nerdtree/.gitignore
  242  cp bundle/nerdtree/.gitignore bundle/omnicppcomplete/
  243  git reset head bundle/omnicppcomplete/doc/tags
  244  git reset head -- bundle/omnicppcomplete/doc/tags
  245  git reset HEAD -- bundle/omnicppcomplete/doc/tags
  246  git status
  247  git add bundle/omnicppcomplete/.gitignore 
  248  git status
  249  git commit -m 'add plugin: omnicppcomplete'
  250  git status
  251  history
  252  echo '----0401---' >> history.md 
  253  history >> history.md 
