# `pollen`

## Description

This layer adds support for [Pollen][1] via the following two packages:

- [`pollen-mode`](https://github.com/lijunsong/pollen-mode)
- `company-pollen`  (same repo as above)

[1]: https://pollenpub.com

When this layer is enabled, it will activate these packages for any file ending in `.pm`, or any
file beginning with `#lang pollen`.

Note that once it is activated, `pollen-mode` adds itself to `'auto-mode-alist` for `.pmd`, `.pp`
and `.p` files as well. This might matter to you if you program in Perl.

## Install

To use this configuration layer separately from this repo, copy the files in this folder to
`~/.emacs.d/private/pollen/`.

To actually enable it, add `pollen` to the existing `dotspacemacs-configuration-layers` list in your
Spacemacs configuration file.
