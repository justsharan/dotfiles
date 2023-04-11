# dotfiles

These are my configuration files for all the tools I use on my macOS desktop. My daily driver is the 2020 MacBook Air with the M1 chip and 16 GB of RAM.

![Screenshots of my desktop](screenshot.png)

### Code Editor

I have VSCode installed for the rare occasion that I need it, but most of my work is done in Vim 8 (the default version that comes with macOS Monterey). I use it with the [Nord](https://www.nordtheme.com/ports/vim) theme for vim.

I manage packages with the default method that ships with Vim 8. These are the ones I use:

* [**nerdtree**](https://github.com/preservim/nerdtree): Used for file tree viewing... eventually, I'd like to move to netrw and vim-vinegar, but I haven't gotten around to learning them for the time being.
* [**lightline**](https://github.com/itchyny/lightline.vim): This is the basic statusline that I prefer using.
* [**vimtex**](https://github.com/lervag/vimtex): This is an extension that provides LaTeX-specific features for Vim.
* [**vim-rmarkdown**](https://github.com/vim-pandoc/vim-rmarkdown): This extension provides some RMarkdown-specific features for Vim.
* [**lightline-bufferline**](https://github.com/mengelbrecht/lightline-bufferline): Provides a top status bar to show buffers and works with lightline.
* [**goyo.vim**](https://github.com/junegunn/goyo.vim) and [**limelight.vim**](https://github.com/junegunn/limelight.vim): Provide a distraction-free writing mode that I use for LaTeX and markdown work.

### Terminal

I use [Kitty](https://sw.kovidgoyal.net/kitty/) as my terminal emulator (but I've replaced its icon with the default Terminal.app icon), with the same Nord theme.

The font has been changed to [Source Code Pro](https://fonts.adobe.com/fonts/source-code-pro), and I've removed the buttons from the top for a more minimal aesthetic.

### Window Manager

I don't actually use a tiling WM on my laptop. Instead, I just use [Rectangle](https://rectangleapp.com/), which is merely a tool that helps you snap windows to corners using keybindings.

I used to use [yabai](https://github.com/koekeishiya/yabai) (like i3 for macOS), but I never really used any of its advanced features beyond just the window snapping stuff, so I decided to switch to Rectangle since I get the same core functionality with a much nicer GUI and without the need to disable SIP.
