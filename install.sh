#!/bin/bash

# GitHub Codespaces dotfiles installation script
# This script will be automatically run when a new codespace is created

set -e  # Exit on any error

# Get the directory where this script is located (dotfiles repo directory)
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "📁 Dotfiles directory: $DOTFILES_DIR"

# Install fzf (fuzzy finder)
echo "📦 Installing fzf..."
if ! command -v fzf &> /dev/null; then
    # Install fzf using git clone method (works reliably in codespaces)
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --all --no-bash --no-fish
    echo "✅ fzf installed successfully"
else
    echo "✅ fzf is already installed"
fi

# Create symlinks for dotfiles
echo "🔗 Creating symlinks for dotfiles..."

# Array of files to symlink (excluding Brewfile as requested)
declare -a dotfiles=(
    ".zshrc"
    ".p10k.zsh"
)

for file in "${dotfiles[@]}"; do
    source_file="$DOTFILES_DIR/$file"
    target_file="$HOME/$file"
    
    if [[ -f "$source_file" ]]; then
        # Remove existing file/symlink if it exists
        if [[ -e "$target_file" || -L "$target_file" ]]; then
            echo "🗑️  Removing existing $target_file"
            rm -f "$target_file"
        fi
        
        # Create the symlink
        ln -s "$source_file" "$target_file"
        echo "✅ Created symlink: $target_file -> $source_file"
    else
        echo "⚠️  Warning: $source_file not found, skipping"
    fi
done

# Source the new .zshrc if we're in a zsh session
if [[ -n "$ZSH_VERSION" && -f "$HOME/.zshrc" ]]; then
    echo "🔄 Sourcing new .zshrc..."
    source "$HOME/.zshrc" || echo "⚠️  Note: Some .zshrc configurations may require a new shell session"
fi

echo "🎉 Dotfiles installation complete!"