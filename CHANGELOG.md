# Changelog

All notable changes to **ShadowForge DevTools** are documented here.
This project follows [Semantic Versioning](https://semver.org/).

## [1.0.0] — Initial public release

First public release of the developer panel.

### Added
- Main panel router with module auto-registration via `SFD.RegisterModule`.
- Framework auto-detection (Qbox / QBCore / ESX / standalone) on both client and server.
- ACE permission gating with two tiers — `shadowforge.devtools` (base) and `shadowforge.devtools.dangerous` (mutating actions).
- **Entity Inspector** — raycast loop, live overlay, single-shot inspect-aimed/closest, action menu (freeze, hide, collision toggle, mark mission, delete), and per-type spawn snippets.
- **Coordinate Tools** — `vector2/3/4`, `vec3/4`, Lua table, JSON, heading-only, `/tp` command. Save / list / teleport / delete / bulk-export named locations stored in KVP.
- **Zone Builder** — box (size + rotation), sphere (radius), poly (point-by-point) with debug preview. Exports to `ox_target`, `ox_lib zones`, `qb-target`, JSON.
- **Object Placer** — spawn by model name, WASD / R-F / Q-E movement (camera-relative), Shift fast / Alt precision, snap-to-ground, freeze on confirm, cancel on Backspace, bulk-export of placed Lua.
- **Vehicle Tools** — inspect current / aimed / closest vehicle, copy spawn snippets, Qbox shared-entry, `ox_target` template, repair, clean, flip, plate change, engine toggle, delete.
- **Ped Tools** — inspect / spawn peds, scenario picker (configurable list), `CreatePed` and `ox_target` snippets, freeze / invincible / clear-tasks / delete.
- **Player / Dev Tools** — heal, armor, godmode, invisible, noclip (camera-relative, fast/slow modifiers), dev blips for other players, waypoint teleport, model-hash copy, framework data viewer (job, money, citizenid, identifiers).
- **World Tools** — local / synced time freeze, weather override, blackout toggle, street / crossing / zone / interior info.
- **Resource Tools** — dependency status report, controlled ensure / start / stop limited to `Config.SafeResources`.
- **Debug Overlay** — live HUD with FPS, coords, heading, speed, street + zone, interior, weapon, aimed entity. Each field toggleable.
- **Snippet Generator** — eight categories (Coordinates, Spawn, ox_target, ox_lib zones, qb-target, Events & commands, ox_lib UI, Server) covering events, commands, progress bar, context menu, input dialog, notify, ACE permission check, Discord webhook helper.
- Optional **Discord logging** with per-action toggles (`open`, `delete`, `spawn`, `teleport`, `noclip`, `godmode`, `snippet`, `resource`, `world`). Blank webhook is a safe no-op.
- Resource-stop cleanup for all spawned dev props/peds and overlays.
- MIT license.

### Notes
- Built against `ox_lib` 3.x APIs (`lib.registerContext`, `lib.inputDialog`, `lib.notify`, `lib.showTextUI`, `lib.zones`, `lib.requestModel`, `lib.callback`, `lib.addKeybind`, `lib.setClipboard`).
- Tested on FiveM artifact build 7290+. Older artifacts that lack `lib.setClipboard` fall back to F8 console output.
