# Dotfiles Setup

This repository contains configuration files for setting up development environments. It supports both local MacBook setup and GitHub Codespaces automatic installation.

## GitHub Codespaces Setup

This repository is configured to work automatically with GitHub Codespaces. You can enable this repository as your dotfiles repository in your [GitHub Codespaces settings](https://github.com/settings/codespaces)

## Prerequisites

1. **Install Homebrew**: Homebrew is a package manager for macOS. You can install it by running the following command in your terminal:

    ```sh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

2. **Install GitHub CLI**:

    ```sh
    brew install gh
    ```

3. Login with GitHub ClI

    ```sh
    gh auth login
    ```


## New Mac Setup Instructions

1. **Clone the Repository**: Clone this repository to your home directory:

    ```sh
    gh repo clone idelusAleksander/dotfiles ~/dotfiles
    ```

2. **Install Brew packages**:

    ```sh
    cd ~/dotfiles
    brew bundle install
    ```

3. **Apply macOS defaults**:

    ```sh
    cd ~/dotfiles
    bash macos.sh
    ```

4. Install fzf

    ```sh
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --all --no-bash --no-fish
    ```

5. **Symlink Configuration Files**: Create symbolic links for the configuration files in your home directory:

    ```sh
    ln -s ~/dotfiles/.zshrc ~/.zshrc
    ln -s ~/dotfiles/.p10k.zsh ~/.p10k.zsh
    ```

## Learn more

## zsh

<https://youtu.be/ud7YxC33Z3w?si=6ZJo6Ks8VdOZ-U1->

## dotfiles

<https://www.youtube.com/watch?v=r_MpUP6aKiQ&t=348s&ab_channel=Fireship>


## Ideas

Maybe look at <https://github.com/MikeMcQuaid/strap>
Cool things like using touch id for sudo
