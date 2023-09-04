# neovim config 

## Clone the repo and prepare the enviroments

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
