# holodark.vim

This is a dark Vim colorscheme somewhat inspired by Android's "Holo"
theme. I'd been using a light colorscheme for many years (see my
[viewsource colorscheme](https://github.com/xenomachina/vim-viewsource))
and wanted to try a dark colorscheme for a change.

For the moment, this colorscheme only sets GUI colors.

One thing it does which (I think) is a bit unusual for a colorscheme is
that it changes the StatusLine and TabLineSel colors based on the focus.
This is intended to mimic the behavior of the [i3 window
manager](http://i3wm.org/). This is done via autocmds. If you don't like
this behavior then, after setting the colorscheme, disable the
corresponding autocmd group:

    augroup! holodark_focus_colors



## Installation

If you use [pathogen.vim](https://github.com/tpope/vim-pathogen), simply
run:

    cd ~/.vim/bundle
    git clone git://github.com/xenomachina/vim-holodark.git

if not, you can run:

    mkdir -p ~/.vim/colors

and then copy
[holodark.vim](https://raw.githubusercontent.com/xenomachina/vim-holodark/master/colors/holodark.vim)
into that directory.

Finally, add `colorscheme holodark` to your `.vimrc`.


## License

Copyright © Laurence Gonsalves.
Distributed under the same terms as Vim itself.
See `:help license`.
