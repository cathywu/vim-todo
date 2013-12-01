todo.vim
========
Simple syntax highlighting for todo lists in vim

Setup
-----
    cp todo.vim ~/.vim/syntax/todo.vim

Usage
-----
Create a file with a `.todo` extension and start typing. That's it!

![Sample usage of vim.todo](sample.png "Sample usage")

Optional setup for .vimrc
----------------------------
Optionally add the following lines to your `~/.vimrc`. This maps the `<F2>`, `<F3>` keys to insert current/future date headings.

    " Map function keys to print formatted new dates
    if has("unix")
        let s:uname = system("uname")
        if s:uname == "Darwin\n"
            " OSX has a dumb date utility, so use the Unix one
            " Setting the path in vim seems non-trivial, so directly call the
            " correct executable (vs. /bin/date)
            let s:dateutil = "/opt/local/libexec/gnubin/date"
        else
            let s:dateutil = "date"
        endif
    endif
    
    " Insert date into current buffer, given offset from current date
    function! InsertDate(offset)
        " cmd: date -d'N day' +%a %m-%d-%Y
        let l:format = "\'+\\%a \\%m-\\%d-\\%Y\'"
        execute ":r !" . s:dateutil . " -d\'". a:offset . " day\' " . l:format
    endfunction
    command! -nargs=1 InsertDate call InsertDate(<f-args>)
    
    noremap <F2> o<ESC>80i=<ESC>:InsertDate 0<CR>I>> <ESC>o<ESC>80i=<ESC>o<ESC>
    noremap <F3> o<ESC>80i=<ESC>:InsertDate 1<CR>o<ESC>80i=<ESC>o<ESC>
    noremap <F4> o<ESC>80i=<ESC>:InsertDate 2<CR>o<ESC>80i=<ESC>o<ESC>
    noremap <F5> o<ESC>80i=<ESC>:InsertDate 3<CR>o<ESC>80i=<ESC>o<ESC>
    noremap <F6> o<ESC>80i=<ESC>:InsertDate 4<CR>o<ESC>80i=<ESC>o<ESC>
    noremap <F7> o<ESC>80i=<ESC>:InsertDate 5<CR>o<ESC>80i=<ESC>o<ESC>
    noremap <F8> o<ESC>80i=<ESC>:InsertDate 6<CR>o<ESC>80i=<ESC>o<ESC>

