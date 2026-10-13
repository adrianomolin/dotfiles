# dotfiles

Snapshot of my current macOS configuration. It includes Zsh and shell startup files, Git and GitHub CLI settings, SSH configuration, AeroSpace, Alacritty and its themes, Starship, tmux, Fish startup snippets, pip, scdl, Orange, and my Codex, Claude, OpenCode, and shared agent skills.

tmux and Oh My Zsh plugins, plus my Corne keyboard configuration, are pinned Git submodules. The Dracula Zsh theme and its async helper are included in `.oh-my-zsh/themes`. The installed Raycast extension list is in `.config/raycast/extensions.json`; reinstall those packages from Raycast's Store. The iTerm2 AppSupport symlink points to local app data and does not archive that data.

## Restore

```sh
git clone --recurse-submodules https://github.com/adrianomolin/dotfiles.git ~/dotfiles
```

For an existing checkout, run `git submodule update --init --recursive`. Install the applications and Oh My Zsh first, then copy or link the relevant files into your home directory, backing up existing files before replacing them. Copy the custom Oh My Zsh plugin directories and theme files into the installed Oh My Zsh directory. This is a personal snapshot: absolute paths, project trust entries, and installed plugin references reflect this machine. Codex's bundled plugin cache is created by installing its configured plugins.

AeroSpace uses config version 2 and explicitly retains all 17 shortcut workspaces. Its Dia routing rule excludes windows detected as floating so dialogs can stay where they open.

## Local files

Login tokens, account/device state, histories, sessions, application databases, caches, compiled Raycast bundles, and dependency installs are excluded. Authenticate Stripe, Raycast, GitHub CLI, 1Password, and other services locally after restoring. Do not copy an entire app data directory into the repository.

Older commits contained a GitHub token in `.zshrc` and Stripe and Raycast authentication files. Removing them from the current tree does not remove them from Git history; revoke or rotate any still-active affected credentials.
