# Dotfiles Setup

This repository contains configuration files for setting up a new MacBook. Follow the instructions below to get started.

## Prerequisites

1. **Install Homebrew**: Homebrew is a package manager for macOS. You can install it by running the following command in your terminal:
    ```sh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

2. **Install Git**: If Git is not already installed, you can install it using Homebrew:
    ```sh
    brew install git
    ```

## Setup Instructions

1. **Clone the Repository**: Clone this repository to your home directory:
    ```sh
    git clone git@github.com:FidelusAleksander/dotfiles.git ~/dotfiles
    ```

2. **Symlink Configuration Files**: Create symbolic links for the configuration files in your home directory:
    ```sh
    ln -s ~/dotfiles/.zshrc ~/.zshrc
    ```
    ```sh
    ln -s ~/dotfiles/.p10k.zsh ~/.p10k.zsh
    ```


