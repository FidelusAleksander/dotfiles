# Dotfiles Setup

This repository contains configuration files for setting up a new MacBook. Follow the instructions below to get started.

## Prerequisites

1. **Install Homebrew**: Homebrew is a package manager for macOS. You can install it by running the following command in your terminal:

    ```sh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

2. **Install git**:

    ```sh
    brew install git
    ```

## New Mac Setup Instructions

1. **Clone the Repository**: Clone this repository to your home directory:

    ```sh
    git clone git@github.com:FidelusAleksander/dotfiles.git ~/dotfiles
    ```

2. **Install Brew packages**:

    ```sh
    cd ~/dotfiles
    brew bundle install
    ```

3. **Symlink Configuration Files**: Create symbolic links for the configuration files in your home directory:

    ```sh
    ln -s ~/dotfiles/.zshrc ~/.zshrc
    ```

    ```sh
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
