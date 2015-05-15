utilities
=========

Just a colleciton of things which I find useful to have around. Feel free to borrow code from the files for your own use.

Resizing windows on OSX
-----------------------

If you have a laptop and you are frequently working both standalone and with a thunderbolt display, you are probably used to resizing your windows by hand. I finally got fed up with that, found some people were using applescript to do the resizing for them, and built some scripts of my own to do the same.

* windows-config-mobile is the script I run to set my windows for standalone (1440x900) resolution;
* windows-config-single is the script for when I'm docked to a (somewhat large) thunderbolt. I typically keep my laptop open and combine its screen into one common space (per virtual desktop).
* windows-config-dual is because someone shoved a second thunderbolt into my arms and told me to raise it as though it were my own child.

Vim config
----------

If you were curious how to configure something fancy in Vim -- well, the vimrc file in here probably won't help. I run with a fairly basic setup, primarily with MacVim running in its gvim form, so a lot of the cosmetic mappings I used to make on Windows are obsolete (and, thus, gone).

Here are a few things I use with my vim setup:

* [Pathogen](https://github.com/tpope/vim-pathogen), which is fairly essential to any custom vim setup.
* [Inconsolata](http://levien.com/type/myfonts/inconsolata.html), my current code font of choice. (There's also a version hosted at [Google](http://www.google.com/fonts/specimen/Inconsolata) which supports bold type.)
* [Solarized](https://github.com/altercation/vim-colors-solarized), which is the best color scheme I've yet used for editing source code.
* [Tabularize](https://github.com/godlygeek/tabular), a handy plugin for aligning code based on a delimiter. For example, you can line up variable assignments, object properties in javascript...
