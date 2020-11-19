# Humbled
A clean and humble zsh theme with support for condaenv, virtualenv and git with everything left aligned with the working directory in bold

![Screencast](screencast.gif)

## Installation

You can download [humbled.zsh-theme](https://github.com/saravanabalagi/zsh-theme-humbled/raw/master/humbled.zsh-theme) and place it in `$ZSH_CUSTOM/themes` (usually at `~/.oh-my-zsh/custom/themes`)

or use the following script to do the same

```
mkdir temp
git clone https://github.com/saravanabalagi/zsh-theme-humbled temp
mv temp/humbled.zsh-theme $ZSH_CUSTOM/themes
rm -rf temp
```

Then edit your `~/.zshrc` file to include the following, replace `ZSH_THEME` value if already exists:

```
ZSH_THEME="humbled"
```

Enjoy humbled

![Screenshot](screenshot.png)

## Licence

Please refer to the [License](LICENSE) file.
