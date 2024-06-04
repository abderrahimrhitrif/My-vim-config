# Vim Configuration Documentation

## Introduction
This repository contains my personal Vim configuration files. The configuration aims to enhance the development experience by integrating powerful plugins for code navigation, syntax highlighting, language server protocol (LSP) support, and more.

## Table of Contents
1. [Installation](#installation)
2. [Plugins](#plugins)
   - [Packer](#packer)
   - [LSP Zero](#lsp-zero)
   - [Mason](#mason)
   - [Harpoon](#harpoon)
   - [Treesitter](#treesitter)
   - [Telescope](#telescope)
3. [Configuration](#configuration)
4. [Usage](#usage)
5. [Contributing](#contributing)
6. [License](#license)

## Installation
To get started with this configuration, clone the repository and follow the installation steps below.

### Prerequisites
- Neovim (>= 0.9.0)
- Git

### Steps
1. Clone the repository:
    ```sh
    git clone https://github.com/abderrahimrhitrif/My-vim-config.git ~/.config/nvim
    ```
2. Clone packer repository:
    ```sh
    git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
    ```
3. Source the files under /ash starting with packer.lua

2. Open Neovim and install the plugins using `Packer`:
    ```sh
    nvim +PackerSync
    ```

## Plugins
This configuration uses the following plugins to enhance functionality:

### Packer
[Packer](https://github.com/wbthomason/packer.nvim) is a plugin manager for Neovim. It handles the installation and updating of plugins.

### LSP Zero
[LSP Zero](https://github.com/VonHeikemen/lsp-zero.nvim) simplifies the setup of Neovim's built-in LSP (Language Server Protocol) capabilities.

### Mason
[Mason](https://github.com/williamboman/mason.nvim) is a package manager for LSP servers, DAP servers, linters, and formatters.

### Harpoon
[Harpoon](https://github.com/ThePrimeagen/harpoon) is a plugin for quick file navigation.

### Treesitter
[Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) provides better syntax highlighting and code parsing.

### Telescope
[Telescope](https://github.com/nvim-telescope/telescope.nvim) is a highly extendable fuzzy finder over lists.

## Configuration
The configuration files are divided into multiple files for better organization. Here is a brief overview:

- `init.lua`: The main entry point for Neovim configuration.
- `packer.lua`: Plugin management and configuration.
- `mason.lua`: LSP-related configuration.
- `remap.lua`: Custom keybindings.

## Usage
After installing and setting up the plugins, you can use the following commands and keybindings:

- **Packer**: `<space>sy` to install/update plugins.
- **Mason**: `:Mason` to open the Mason UI.
- **Harpoon**: `<space>a` to mark files, `<space>m` to list added files, `<space>h/j/k/l` to switch files.
- **Treesitter**: Improved syntax highlighting and code parsing.
- **Telescope**: `<space>f` to open the file finder.
- **navigation**: `<space>e` to open the file explorer.

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request for any improvements.

## License
This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file
