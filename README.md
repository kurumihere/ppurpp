# ppurpp

Personal purple colorscheme for desktop tools, terminals, editors, and status bars.

## Palette

`ppurpp` ships with dark and light variants. The canonical colors live in
`palette/`, while generated or hand-maintained app ports live in `ports/`.

## Ports

- Alacritty
- i3
- Polybar
- Rofi
- Dunst
- Vim

## Usage

Copy or symlink files from `ports/` into the matching config path.

Example:

```sh
ln -sf "$PWD/ports/i3/ppurpp-dark.conf" ~/.config/i3/theme.conf
ln -sf "$PWD/ports/polybar/ppurpp-dark.ini" ~/.config/polybar/colors.ini
ln -sf "$PWD/ports/rofi/ppurpp-dark.rasi" ~/.config/rofi/current-theme.rasi
```

