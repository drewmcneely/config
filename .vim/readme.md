# Adding Packages
cd pack/drew/start/
git submodule add https://github.com/package-name/

# .vim directory structure
## autoload

The autoload directory is for standard Vim autoload scripts.

These are functions used by plugins and for general use. They will be loaded automatically when the function is invoked. See “:help autoload”.

## colors
These files are used to get different colors by using the “:colorscheme” command.
compiler
This directory contains Vim scripts to be used with a specific compiler. They are used with the “:compiler” command. These scripts usually set options, for example ‘errorformat’. See “:help write-compiler-plugin”.

## ftplugin
The ftplugin directory is for Vim plugin scripts that are only used for a specific filetype.
All files ending in .vim in this directory and subdirectories will be sourced by Vim when it detects the filetype that matches the name of the file or subdirectory.
The filetype plugins are only loaded when the “:filetype plugin” command has been used.
The default filetype plugin files contain settings that 95% of the users will want to use. They do not contain personal preferences, like the value of 'shiftwidth’.
If you want to do additional settings, or overrule the default filetype plugin, you can create your own plugin file. See “:help ftplugin” in Vim.

## indent
This directory contains files to automatically compute the indent for a type of file.
If you want to add your own indent file for your personal use, read the docs at “:help indent-expression”.
Note: If you want to make an indent file, it should be named for the filetype that you want, not the extension. For example, if you want to change your Javascript indentation, your file should be named javascript.vim, not js.vim.

## keymap
Keymap files for Vim
One of these files is loaded when the 'keymap’ option is set.

The name of the file consists of these parts:

    {language}[-{layout}][_{encoding}].vim

The format of the keymap lines below “loadkeymap” is explained in the Vim help files, see “:help keymap-file-format”.

## lang
Language files for Vim

## plugin
The plugin directory is for standard Vim plugin scripts.
All files here ending in .vim will be sourced by Vim when it starts up. Look in the files for hints on how they can be disabled without deleting them.

## syntax

This directory contains Vim scripts for syntax highlighting.
tools
Some tools that can be used with Vim:

## tutor
tutor contains the hands-on tutorial for new users

## The custom configuration directory
Next, we have our custom configuration directory, commonly located at ~/.vim. This contains all of our personal modifications so we don’t mess with the default configuration. From what I can tell, you can put any directory that matches the names in the install directory, and the files within will behave as if you had dropped them in the installation directory. Again, you can do this to override the default behavior without messing anything up so you can easily take your changes to other machines. For an example of what my ~/.vim directory looks like, check it out. I’ve generally tried to stick to the conventions that are laid out on this page.

## The .vimrc files

They load in a certain order. You can see the approximate order and some guidelines by invoking:

:h startup

Also, if you run vim from the command-line with a verbose flag, you can see what the order of files being loaded is. Generally I would split out the graphical vim-specific configuration into a .gvimrc file, and have the rest of my configuration in a standard .vimrc file. This is so settings that only pertain to graphical vim versions don’t give you a bunch of error messages. In the same way, some color schemes don’t look very good in command-line vim, so this is a way to ensure that you have a good look for these versions.
