# Dotfiles

Created this repo by following this guide from Ackama: https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/

I wrote about my laptop setup here: https://0daysto.live/posts/arch_linux_ricing/

# Installation
```
echo ".cfg" >> .gitignore
git clone --bare git@github.com:meme-lord/dotfiles.git $HOME/.cfg
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
```
