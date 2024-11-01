# important

1. Change keymap for go to definition
2. Code folding - right now doesn't work
3. Configure format on save - I kind of have this working, but don't totally understand how it works - I'm assuming it just picks up a formatter if it's installed - or somehow uses LSPs formattin?

4. Configure telescope to show ceratin hidden files and not others - probably best way to do this is have it respect .gitignore
5. cmd + T in vscode lets you do a symbol search - does neovim have something similar?
6. Have `:e` always create files relative to the current directory i.e.
    - `:e something.txt` should create the file relative
    - also it's nice to think about this behavior as absolute as well - it can be hard to tell which directory I'm in though?
7. CMD + / - comments the current line or lines highlighted

# nice to have

1. installed nvim-treesitter-context - need to look into configuration
    - There is an error with treesitter-context with markdown files I'm facing - need to figure this out
2. <SPC-TAB> would return me to the last file that I visited
3. when go to definition if the buffer is already open in a window jump to that window rather than opening that file up in the current window


# Bugs / issues

1. treesitter-context doesnt seem to run when I open up a new file in a new split (saw this with tdd go stuff - test files didn't have TSContext but original buffer split did)



# notes


## Understanding Neovim #1 - Installation

- help command appears 4 times on the welcome text
- I have to know how to use the help pages

- there is a distinction from the functions you can call from lua from scripts and onces that you can call from `:` thing - one is vimscript the other is lua
    - 

"since we are using a vimscript function we are going to use a vimscript command"



> :options







vim.opt.splitbelow = opens below
vim.opt.splitright -> vertical splits open to the right


