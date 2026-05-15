# ShadowForge DevTools

> A free, open-source **in-game developer panel** for FiveM. Built for the people writing the scripts — not the ones running the server.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Lint](https://github.com/TonyHinojosa4/Shadowforge-devtools/actions/workflows/lint.yml/badge.svg)](https://github.com/TonyHinojosa4/Shadowforge-devtools/actions/workflows/lint.yml)
[![Release](https://img.shields.io/github/v/release/TonyHinojosa4/Shadowforge-devtools?include_prereleases&sort=semver)](https://github.com/TonyHinojosa4/Shadowforge-devtools/releases)
[![GitHub stars](https://img.shields.io/github/stars/TonyHinojosa4/Shadowforge-devtools?style=social)](https://github.com/TonyHinojosa4/Shadowforge-devtools/stargazers)

Inspect entities, copy coords, build target zones, place props, and generate ready-to-paste snippets — all from inside the game.

---

## Features

- 🔍 **Entity inspector** — click anything in the world, see every property that matters
- 📍 **Coords copy** — vector3, vector4, with heading, formatted for whichever framework you're writing for
- 🎯 **Zone builder** — visual target zone placement, exports to ox_target / qb-target / polyzone
- 🪑 **Prop placer** — drop, rotate, snap, and get a snippet you can paste straight into your resource
- 🧩 **Framework-agnostic** — Standalone, Qbox, QBCore, ESX
- 🪶 **Lightweight** — built on `ox_lib`, no NUI bloat

## Requirements

- FiveM server (artifact 7290 or newer recommended)
- [`ox_lib`](https://github.com/overextended/ox_lib)
- One of: Standalone / Qbox / QBCore / ESX

## Installation

### Option 1 — Download release (recommended)

1. Go to [Releases](https://github.com/TonyHinojosa4/Shadowforge-devtools/releases) and grab the latest `.zip`.
2. Extract into your server's `resources/` folder. You should end up with `resources/shadowforge-devtools/`.
3. Add to `server.cfg`:
   ```cfg
   ensure ox_lib
   ensure shadowforge-devtools
   ```
4. Restart the server.

### Option 2 — Clone

```bash
cd resources
git clone https://github.com/TonyHinojosa4/Shadowforge-devtools.git shadowforge-devtools
```

Then add `ensure shadowforge-devtools` to your `server.cfg`.

## Usage

In-game, run:

```
/devtools
```

Full feature docs live in [`docs/`](docs/).

## Configuration

Edit [`config.lua`](config.lua) to:

- Set the ace permission required to use the panel
- Pick your framework adapter (auto-detected by default)
- Customize keybinds and notification style

## Contributing

PRs welcome. Please read [CONTRIBUTING.md](CONTRIBUTING.md) before opening one — it covers the local setup, commit style, and the PR flow.

Found a bug? [Open an issue.](https://github.com/TonyHinojosa4/Shadowforge-devtools/issues/new/choose)
Have an idea? Hit [Discussions](https://github.com/TonyHinojosa4/Shadowforge-devtools/discussions) first.

Security issue? See [SECURITY.md](SECURITY.md) — please don't open a public issue.

## License

[MIT](LICENSE) — do what you want with it, just keep the copyright notice. If it ends up in your paid script, a credit somewhere is appreciated but not required.

---

Made by [@TonyHinojosa4](https://github.com/TonyHinojosa4) · Part of the Platinum Heights / 4Shadow toolset.
