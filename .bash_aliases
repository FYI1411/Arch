#source file for bash's aliases
alias aur='yay'
alias mf='cd ~/Desktop'
alias open='xdg-open'
alias cron='crontab ~/.crontab'
alias driver='sudo pacman -S $(cat ~/install/drivers)'
alias package='sudo pacman -S $(cat ~/install/packages/*)'
alias aur_package='yay -S $(cat ~/install/aurs)'
alias service='sudo systemctl enable --now $(cat ~/install/services)'
alias install='driver && package && aur_package && service && sudo ~/install/note'
alias clean='aur -Rns --noconfirm $(pacman -Qtdq); aur -Scc --noconfirm; sudo pacman -Scc --noconfirm'
alias update='aur --noconfirm && clean'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias mirror='sudo reflector --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'
alias ga='git add -A'
alias gc='git checkout -- '
alias gs='git status'
alias gd='git diff'
alias gr='git rm -rf --cached .'
alias sdn='shutdown now'
