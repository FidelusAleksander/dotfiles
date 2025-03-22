# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Install antigen conditionally if its not installed
if [[ ! -f ~/antigen.zsh ]]; then
  curl -L git.io/antigen > ~/antigen.zsh
fi

# Use antigen for managing plugins https://github.com/zsh-users/antigen
source ~/antigen.zsh

# Load the oh-my-zsh's library https://ohmyz.sh/
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh). See list https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
antigen bundle git
antigen bundle command-not-found

# Other bundles
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Load the theme https://github.com/romkatv/powerlevel10k
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

# Set up fzf key bindings and fuzzy completion https://github.com/junegunn/fzf#setting-up-shell-integration
if command -v fzf >/dev/null 2>&1; then
  source <(fzf --zsh)
fi

# Run powerlevel10k theme. To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Install NVM if not installed(Node Version Manager) https://github.com/nvm-sh/nvm
if [[ ! -d "$HOME/.nvm" ]]; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
fi

# Load NVM
if [[ -s "$HOME/.nvm/nvm.sh" ]]; then
  export NVM_DIR="$HOME/.nvm"
  source "$NVM_DIR/nvm.sh"
fi
