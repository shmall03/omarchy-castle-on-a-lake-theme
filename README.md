# Castle on a Lake — Omarchy (Quattro) Theme

A warm, earthy dark theme for [Omarchy](https://omarchy.org/) 4 (Quattro),
named after the four castle paintings it ships with (daytime and nighttime
versions). Terracotta accents,
cream text, and mossy greens rest on a near-black canvas for a quiet,
old-stone kind of calm. The palette is blended between the daytime and
nighttime wallpapers, so the colors sit naturally against both.

## Wallpapers

![Castle on a Lake](./backgrounds/castle-on-a-lake.jpg)

*Digital painting by **Raphael Lacoste** — [wallhaven.cc/w/ogj6kp](https://wallhaven.cc/w/ogj6kp)*

![Castle in Front of a Mountain](./backgrounds/castle-afront-a-mountain.jpg)

*Digital painting by **Raphael Lacoste** — [wallhaven.cc/w/jedy6p](https://wallhaven.cc/w/jedy6p)*

### Night versions

![Castle on a Lake at Night](./backgrounds/castle-on-a-lake-night.jpg)

*Night version derived from the original with ImageMagick (dimmer, cooler, moonlit contrast).*

![Castle in Front of a Mountain at Night](./backgrounds/castle-afront-a-mountain-night.jpg)

*Night version derived from the original with ImageMagick (dimmer, cooler, moonlit contrast).*

## Color Palette

| Role | Swatch | Hex |
|:---|:---|:---|
| Background | ![](https://placehold.co/48x20/060606/060606) | `#060606` |
| Dark background | ![](https://placehold.co/48x20/040404/040404) | `#040404` |
| Lighter background | ![](https://placehold.co/48x20/1f1f1e/1f1f1e) | `#1f1f1e` |
| Foreground | ![](https://placehold.co/48x20/f0d4e4/f0d4e4) | `#f0d4e4` |
| Accent | ![](https://placehold.co/48x20/9b6b9f/9b6b9f) | `#9b6b9f` |
| Muted | ![](https://placehold.co/48x20/626262/626262) | `#626262` |
| Yellow | ![](https://placehold.co/48x20/eac283/eac283) | `#eac283` |
| Orange | ![](https://placehold.co/48x20/c29176/c29176) | `#c29176` |
| Green | ![](https://placehold.co/48x20/d0a46d/d0a46d) | `#d0a46d` |
| Red | ![](https://placehold.co/48x20/b77e5f/b77e5f) | `#b77e5f` |

## Installation

```bash
omarchy theme install https://github.com/shmall03/omarchy-castle-on-a-lake-theme.git
```

## Day / Night Background Switching

This theme ships day and night versions of each wallpaper, and a small helper
can swap between them automatically: at sunset the background becomes the
`-night` variant, and at sunrise it switches back. It looks up real
sunrise/sunset times for your location every day — the location configured
for the Omarchy weather panel, or detected from your IP when none is set.

Install it (safe to re-run, nothing to configure):

```bash
bash ~/.config/omarchy/themes/castle-on-a-lake/daynight/install.sh
```

Remove it:

```bash
bash ~/.config/omarchy/themes/castle-on-a-lake/daynight/uninstall.sh
```

Notes:

- The helper is theme-guarded, so it only changes the background while the
  Castle On A Lake theme is active. A background picked manually via the
  switcher is left untouched.
- Requires network access for the daily sunrise/sunset lookup.
- A `post-boot` hook starts the daemon at login; its log lives at
  `~/.local/state/omarchy/bg-daynight-daemon.log`.

## Theme Files

```
colors.toml     Color palette
backgrounds/    Wallpapers
icons.theme     Yaru-wartybrown icons
daynight/       Day/night background switcher (see above)
```

## Acknowledgments

- [Raphael Lacoste](https://www.artstation.com/raphael-lacoste) — original
  artwork for the included wallpapers ([ogj6kp](https://wallhaven.cc/w/ogj6kp),
  [jedy6p](https://wallhaven.cc/w/jedy6p)) via [Wallhaven](https://wallhaven.cc)
- [Aether](https://github.com/bjarneo/aether) — color palette generation
- [Omarchy](https://omarchy.org/) — the desktop this theme was made for
