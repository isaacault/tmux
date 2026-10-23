# tmux

My tmux configuration, using [tpm](https://github.com/tmux-plugins/tpm) with the plugins vendored as git submodules.

## Setup

```sh
git clone --recurse-submodules <repo-url> ~/.config/tmux
```

tmux 3.2+ reads `~/.config/tmux/tmux.conf` automatically. Then start tmux and press `prefix I` (capital i) to install any plugins tpm doesn't have yet.

If the repo was cloned without `--recurse-submodules`:

```sh
git -C ~/.config/tmux submodule update --init
```

## Keys

The prefix is `C-a`.

| Key | Action |
| --- | --- |
| `prefix r` | Reload `tmux.conf` |
| `prefix h/j/k/l` | Select pane left/down/up/right |
| `prefix m` | Zoom pane |
| `prefix ^` | Last window |
| `prefix "` / `%` / `c` | Split / split / new window, in the current directory |
| `v` / `C-v` / `y` (copy-mode) | Begin selection / rectangle selection / copy to clipboard (`pbcopy` on macOS, `xclip` on Linux) |

## Plugins

- [catppuccin/tmux](https://github.com/catppuccin/tmux) - theme (mocha)
- [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect) - persist sessions across restarts
- [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum) - autosave and restore sessions

## Notes

- On Linux the copy-mode binding needs `xclip` installed.
- Catppuccin v2 options (`@catppuccin_*`) must be set before the `run` line for tpm. The `status-right` modules are set after it, since they only exist once the plugin has loaded.
