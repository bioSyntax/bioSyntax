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
4. **Change your theme to `bioSyntax`** (`Ctrl`+`K` `Ctrl`+`T` for Windows and `⌘`+`K` `⌘`+`T` for Mac)

## Note

As described [here](https://github.com/Microsoft/vscode/issues/3429), VS Code currently does not provide direct support for background styling in its themes. But the developers think they might add this feature in the future. So here, I use TypeScript to implement the background highlight for fasta, fastq, clustal and sam files, but there will be a delay when rendering the colors. After the VS Code team provides official support I will update the plugin.

*************************************************

### [Collaborate](http://biosyntax.org/dev)

The original bioSyntax is developed by: [Artem Babaian](https://github.com/ababaian) | [Anicet Ebou](https://github.com/ebedthan) | [Alyssa Fegen](https://github.com/alyeffy) | [Jeffrey Kam](https://github.com/lazypanda10117) | [Gherman Novakovskiy](https://github.com/fransilvion) | [Jasper Wong](https://github.com/Jwong684)

And this plugin is developed by [Li Yao](https://github.com/liyao001)

Contact us: [info[AT]biosyntax.org](mailto:info@biosyntax.org)

A [hackseq17](https://www.hackseq.com) Initiative.
