todo.vim
========
Simple syntax highlighting for todo lists in vim

Setup
-----
    cp syntax/todo.vim ~/.vim/syntax/
    cp ftdetect/todo.vim ~/.vim/ftdetect/
    cp colors/desert256.vim ~/.vim/colors/

Make sure to have the following lines in your `.vimrc`:

    set t_Co=256
    set background=dark
    colorscheme desert256

Usage
-----
Create a file with a `.todo` extension and start typing. That's it!

![Sample usage of vim.todo](sample.png "Sample usage")

Optional setup for .vimrc
----------------------------
`vimrc-todo` is a partial vimrc file that maps the `<F2>`, `<F3>` keys to insert current/future date headings. This is supported on Linux and OSX. OSX requires an installation of the standard gnu date utility, available via Homebrew, MacPorts, etc.
    
    cp vimrc-todo ~/.vim

Add the following line to your `~/.vimrc`

    source ~/.vim/vimrc-todo

