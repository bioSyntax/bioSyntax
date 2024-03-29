![bioSyntax Logo](https://raw.githubusercontent.com/bioSyntax/bioSyntax/master/bioSyntax_logo.png)
![Fasta Banner](https://biosyntax.org/images/fa-banner.png)

This is the **Visual Studio Code support** for bioSyntax, which is a syntax highlighting tool for computational biology to bring you intuitively close to your data.

Support in **vim**, **less**, **sublime3**, **visual studio code** & **gedit** for `.sam`, `.flagstat`, `.vcf`, `.fasta`, `.fastq`, `.faidx`, `.clustal`, `.pdb`, `.gtf`, `.bed` files & more.

# [bioSyntax.org](http://biosyntax.org/)

## Usage
bioSyntax integrates seamlessly with your text editor, recognizing data-type by the file extension.

To gain the most insight from your data, read our brief [bioSyntax Manual](http://bioSyntax.org/man).

## Install
1. Open `Extensions` (`Ctrl`+`Shift`+`X` for Windows and `⇧`+`⌘`+`X` for Mac)
2. Search `bioSyntax`
3. Click `Install`
4. In most cases, when you open a support file, the theme will be switched to `bioSyntax`. However, if it doesn't change, you can manually **change your theme to `bioSyntax`** (`Ctrl`+`K` `Ctrl`+`T` for Windows and `⌘`+`K` `⌘`+`T` for Mac).

## Note
A lot of users mentioned that there's a side effect from bioSyntax for VS Code that it overrides users' choice of themes. Now a new fix is available (see changelog): 
* Locate the settings for bioSyntax by clicking: 
    1. Extensions
    2. bioSyntax (Manage)
    3. Extension Settings
    
    ![](https://github.com/liyao001/bioSyntax/raw/vscode/vscode/resources/bioSyntax_setting.png)
    
* Change the value of `BioSyntax.nonBioTheme` to the name of the theme that you want to use for all other file types (for example, `Monokai`)

    ![](https://github.com/liyao001/bioSyntax/raw/vscode/vscode/resources/bioSyntax_non_bio_theme.png)
    
* Restart VS Code to make the changes effective.

As described [here](https://github.com/Microsoft/vscode/issues/3429), VS Code currently does not provide direct support for background styling in its themes. But the developers think they might add this feature in the future. So here, I use TypeScript to implement the background highlight for fasta, fastq, clustal and sam files, but there will be a delay when rendering the colors. After the VS Code team provides official support I will update the plugin.

*************************************************

### [Collaborate](http://biosyntax.org/dev)

Dev Team: [Artem Babaian](https://github.com/ababaian) | [Anicet Ebou](https://github.com/ebedthan) | [Alyssa Fegen](https://github.com/alyeffy) | [Jeffrey Kam](https://github.com/lazypanda10117) | [Gherman Novakovskiy](https://github.com/fransilvion) | [Li Yao](https://www.yaobio.com) | [Jasper Wong](https://github.com/Jwong684)

Contact us: [info[AT]biosyntax.org](mailto:info@biosyntax.org)

A [hackseq17](https://www.hackseq.com) Initiative.
