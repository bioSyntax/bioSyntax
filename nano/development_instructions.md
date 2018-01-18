# Development for nano/pico

**nano/pico** natively supports syntax highlighting but in some case need to be enabled (see ressources).

## Resources

* [Syntax highlighting in nano](https://askubuntu.com/questions/90013/how-do-i-enable-syntax-highlighting-in-nano)  

* [Write nanorc file](https://gist.github.com/mattcurrycom/9d692d5dbb758e0724881e2c4fb03ef4)  

* Others useful ressources : [Improved Nano Syntax Highlighting](https://github.com/AbhishekGhosh/nano-syntax-highlighting-iNano-/)  


## Instructions of developing Pico Syntax

1) Create a `*.nanorc` file defining syntax highlighting. 

2) Copy this file to `/usr/share/nano/` and to `~/.nano/syntax/` (the first path should also contains  `.nanorc` files by default for others languages such as php, perl, etc., they don't need to be copied to `~/.nanorc/` file but the following step should be done to see colors). 

3) Add this path to these files by creating/editing `~/.nanorc` doing `nano ~/.nanorc` and add `include /usr/share/nano/*.nanorc`.  

4) After that you will be able to see colors in your nano/pico editor.

1. Languages definition files are stored in <language>.nanorc in your nano-syntax folder
      * Linux/MacOS: `/usr/share/nano/`
 
