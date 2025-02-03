# Debian & Alpine Docker Setup

[![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![Alpine Linux](https://img.shields.io/badge/Alpine_Linux-%230D597F.svg?style=for-the-badge&logo=alpine-linux&logoColor=white)](https://www.alpinelinux.org/)
[![Debian](https://img.shields.io/badge/Debian-D70A53?style=for-the-badge&logo=debian&logoColor=white)](https://www.debian.org/)

Docker container configuration for development environment with pre-configured Git, Vim, and Zsh.

English | [日本語](./README.md)

## 🚀 Quick Start

```bash
# Debian version
git clone https://github.com/washoprc/debian-alpine.git
cd debian-alpine
docker-compose up -d
docker-compose exec debian zsh

# Alpine version (lightweight)
docker-compose -f docker-compose.alpine.yaml up -d
docker-compose -f docker-compose.alpine.yaml exec alpine zsh
```

## ✨ Features

- 📦 Pre-installed Git, Vim, and Zsh
- 🇯🇵 Full Japanese language support
- 🎨 Terminal color support
- 🔧 Zsh configured as default shell
- 🔍 Git status in prompt

## 🌟 Available Environments

### 🐋 Debian Version

- Standard Linux environment focused on stability
- Wide range of available packages
- High compatibility with production environments

### 🏔 Alpine Version

- Ultra-lightweight (image size ~100MB)
- Minimal memory usage
- Security-focused design

## 📁 Directory Structure

```tree
.
├── docker-compose.yaml          # Debian environment config
├── docker-compose.alpine.yaml   # Alpine environment config
├── Dockerfile                   # Dockerfile for Debian
├── Dockerfile.alpine            # Dockerfile for Alpine
├── configs/                     # Configuration files directory
│   ├── .vimrc                  # Vim configuration
│   ├── .zshrc                  # Zsh configuration
│   ├── attributes              # Git attributes configuration
│   ├── gitconfig               # Git configuration
│   ├── gitignore              # Git ignore patterns
│   └── gitmessage             # Git commit message template
├── README.md                    # Japanese documentation
└── README_EN.md                # English documentation
```

## Configuration File Structure

Configuration files in the Docker image are placed as follows:

### Git Configuration (`/root/.config/git/`)

Since Git 2.0, using `~/.config/git` as the configuration directory is recommended. This includes:

- `configs/gitconfig` → `/root/.config/git/config`: Basic settings including aliases and user info
- `configs/gitmessage` → `/root/.config/git/message`: Template for maintaining consistent commit messages
- `configs/gitignore` → `/root/.config/git/ignore`: Project-wide ignore patterns
- `configs/attributes` → `/root/.config/git/attributes`: Automatic file attribute settings (line endings etc.)

### Shell & Editor Configuration (Home Directory)

Following traditional dotfile conventions, placed directly in home directory:

- `configs/.zshrc` → `/root/.zshrc`: Zsh startup configuration, aliases, environment variables
- `configs/.vimrc` → `/root/.vimrc`: Vim keymaps, plugins, and display settings

## ⚙️ Customization

### Zsh Configuration

Edit `configs/.zshrc` to customize:

- Prompt display format
- Alias settings
- Completion behavior

### Vim Configuration

Modify `configs/.vimrc` to set:

- Color scheme
- Indentation settings
- Key mappings
- Display options

## 📝 Notes

- Container working directory is `/workspace`
- Automatic synchronization with host filesystem
- Container rebuild required after configuration changes
