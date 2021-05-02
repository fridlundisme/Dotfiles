#
# ------ Joakim Fridlund ------ #
#
# My fish config

### EXPORT ###
set fish_greeting				# Supresses fish's intro messageset EDITOR "nvim"				# $EDITOR use Emacs in terminal	### END OF EXPORT ###
set EDITOR "nvim"				# $EDITOR use Emacs in terminal	
### END OF EXPORT ### 

### MANPAGER ### 
### Uncomment only one of these!

### "bat" as manpager
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

### "nvim" as manpager
# set -x MANPAGER "nvim -c 'set ft=man' -"

### SET EITHER DEFAULT EMACS MODE OR VI MODE ###
function fish_user_key_bindings
  # fish_default_key_bindings
  fish_vi_key_bindings
end
### END OF VI MODE ###


### END OF FUNCTIONS ###

### ALIASES ###

# vim
alias vim='nvim'

# bat
alias cat='bat'

# package managers
# pacman and yay
alias pacsyu='sudo pacman -Syyu'                 # update only standard pkgs
alias yaysua='yay -Sua --noconfirm'              # update only AUR pkgs (yay)
alias yaysyu='yay -Syu --noconfirm'              # update standard pkgs and AUR pkgs (yay)

# config repo

### SETTING THE STARSHIP PROMPT ###
starship init fish | source
