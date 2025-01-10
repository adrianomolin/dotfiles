### [Alacritty](https://github.com/alacritty/alacritty)

#### Activating theme

To activate the theme in **Alacritty**, we need to change its configuration file.

**Alacritty** does not create this configuration file for you but looks for one in the following locations:

**Linux**:

- `$XDG_CONFIG_HOME/alacritty/alacritty.yml`

- `$XDG_CONFIG_HOME/alacritty.yml`

**macOS**:

- `$HOME/.config/alacritty/alacritty.yml`

- `$HOME/.alacritty.yml`

**Windows**:

- `%APPDATA%\alacritty\alacritty.yml`

You can find the default configuration file with documentation for all available fields [here](https://github.com/alacritty/alacritty/releases).

Create the file and replace the patch in the file with the contents of `dracula-pro.yml`.

Applying the theme will take effect immediately. If not, restart **Alacritty**.
