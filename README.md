# spacemacs-config
💾🚀 Spacemacs configuration files and layers for the kinds of things I do: Racket, Pollen, Markdown
and web development.

These files [go][1] in `~/.spacemacs.d`. See also the value in
`dotspacemacs-configuration-layer-path`.

**Pollen layer:** A new layer for use when programming in [Pollen][2]. Correctly loads the
`pollen-mode` and `company-pollen` packages. (I had a fair amount of trouble figuring out how to do
this properly in Spacemacs.) See [layers/pollen/README.md](layers/pollen/README.md)

**Setting up Emacs fresh:**

    brew install emacs-plus@28 

    # Install Spacemacs 
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
    cd ~/.emacs.d
    git checkout develop
    cd ~
    git clone https://github.com/otherjoel/spacemacs-config ~/.spacemacs.d

[1]: https://www.spacemacs.org/doc/DOCUMENTATION.html#orgheadline34
[2]: https://pollenpub.com
