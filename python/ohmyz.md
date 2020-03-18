# ohmyz.sh

[THE way to oraganize zsh](https://ohmyz.sh) 

Install
```
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Note: will politely move current .zshrc to .zshrc.pre-oh-my-zsh

Mods to .zshrc:
```
...
ZSH_THEME="muse"
...
plugins=(alias-finder colorize cp common-aliases copydir dotenv git git-prompt pip python sudo web-search zsh-interactive-cd zsh-navigation-tools z)
```
There are now **many aliases**.
