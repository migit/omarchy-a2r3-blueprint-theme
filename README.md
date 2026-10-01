
# A2R3 Blueprint

**An Omarchy theme drawn straight from an engineering blueprint.** Deep navy, pure white text, one red accent.

![Omarchy theme](https://img.shields.io/badge/Omarchy-theme-e0283c?style=for-the-badge)
![Background](https://img.shields.io/badge/background-%23001127-001127?style=for-the-badge)
![Text](https://img.shields.io/badge/text-%23ffffff-ffffff?style=for-the-badge&labelColor=001127)
![Accent](https://img.shields.io/badge/accent-%23e0283c-e0283c?style=for-the-badge)


<img width="1577" height="996" alt="screenshot-2026-10-01_20-45-05" src="https://github.com/user-attachments/assets/8abda418-2ad9-47de-877e-e8564ce25e03" />

![A2R3 Blueprint preview](preview.png)


## Why this exists

Most dark themes are grey, or a little too colorful. This one is a rover blueprint: a navy sheet, crisp white linework, and a single red mark. The background color was sampled from the A2R3 (Autonomous Room Rover Robot) spec sheet, and the accent is the red from its logo.

Terminals, shells and TUI apps use the same navy and white as the wallpaper, so text reads like drafting-table annotation and nothing distracts from the code.

## Install

One command:

```bash
omarchy-theme-install https://github.com/migit/omarchy-a2r3-blueprint-theme.git
```

Or from the menu: press `Super + Space`, then **Install > Style > Theme** and paste the repo URL.

Apply it manually if it's already installed:

```bash
omarchy-theme-set "a2r3-blueprint"
```

## Palette

| Role       | Hex       |
| ---------- | --------- |
| Background | `#001127` |
| Foreground | `#ffffff` |
| Accent     | `#e0283c` |
| Selection  | `#1c3d66` |
| Muted      | `#3f6390` |

The terminal palette is white-first: every ANSI color slot except red and the dim black slots is white, so shell and TUI text stays white. Red is kept for errors and the accent.

## What's themed

- **Terminals:** Alacritty, Kitty, Ghostty
- **TUI:** btop, Neovim (tokyonight, recolored to match)
- **Desktop:** Hyprland borders, Hyprlock, Waybar, Walker, Mako, SwayOSD
- **Browser:** Chromium
- **Wallpapers:** five in `backgrounds/`: the full A2R3 blueprint sheet (2560x1080) plus four blueprint-grid and dot-grid wallpapers in 16:9 (3840x2160) and 21:9 (3440x1440). Cycle them with `Super + Ctrl + Space`.

## Transparency

Terminals, shells and TUIs are set to 75% opacity. btop and Neovim draw no background of their own, so the terminal's transparency shows through.

To change the level, edit the opacity line in `alacritty.toml`, `kitty.conf` or `ghostty.conf` (`0.75` is the default, lower is more transparent).

If your terminal doesn't pick it up, your own terminal config is overriding the theme. Set it there instead:

| Terminal | Setting |
| --- | --- |
| Alacritty | `[window]` then `opacity = 0.75` |
| Kitty | `background_opacity 0.75` |
| Ghostty | `background-opacity = 0.75` |

For transparency on every window, including browsers and GUI apps, add a Hyprland window rule to `~/.config/hypr/hyprland.conf`. Use the line that matches your Hyprland version:

```ini
# newer Hyprland
windowrule = opacity 0.85 0.75, match:class .*

# older Hyprland
windowrulev2 = opacity 0.85 0.75, class:.*
```

The first number is the opacity for the focused window and the second for unfocused windows.

## Repo layout

```text
.
├── colors.toml        # palette Omarchy generates app themes from
├── backgrounds/       # wallpapers (16:9 and 21:9)
├── preview.png        # 16:9 preview
└── *.toml/.conf/.css  # per-app overrides
```

## Credits

- Wallpaper 1: A2R3 blueprint sheet (orange-accent variant), AI-generated artwork, scaled to 2560x1080. Wallpapers 2 to 5 are generated grids released under the same license.
- Built for [Omarchy](https://github.com/omacom/omarchy).

## License

MIT. Fork it, recolor it, ship your own.

---

**BUILD / EXPLORE / IMPROVE**
