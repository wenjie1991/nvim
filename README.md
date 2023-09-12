# neovim config 

This neovim config is forked from <https://github.com/Zwlin98/nvim>. 

Since the original repo has been re-based, this repo is independed.

## Clone the repo and prepare the enviroments

When old nvim package manager data exist, it is better to clean them by:

```shell
cd ~/.local/share/nvim
rm -r *
# check your XDG_* env vars for this
cd ~/.cache/nvim
rm -r *
```

To install the python helper:

```shell
git clone https://github.com/wenjie1991/nvim ~/.config/nvim

cd ~/.config/nvim && python -m venv nvim-python

cd $HOME && ./.config/nvim/nvim-python/bin/python3 -m pip install pynvim
```

## in vim command line

```vim
#ensure neovim work properly
:checkheath
```
