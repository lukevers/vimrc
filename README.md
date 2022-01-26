# VIM SETTINGS

1. Initialize

```bash
# initialization
cd ~
ln -s ~/path/to/vimrc .vimrc
ln -s ~/path/to/vim .vim

cd .vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git Vundle.vim
```

2. Install plugins. Inside of vim:

```vim
:PluginInstall
```

3. Install coc dependencies

```bash
cd ~/.vim/bundle/coc.nvim
yarn
```

4. Install coc plugins. Inside of vim:

```vim
:CocInstall coc-eslint coc-json coc-tsserver coc-prisma
```
