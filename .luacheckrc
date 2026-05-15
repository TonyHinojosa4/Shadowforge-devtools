-- ShadowForge DevTools - luacheck config
-- See: https://luacheck.readthedocs.io/en/stable/config.html

std = "lua54"

-- FiveM globals. The lint action adds Cfx natives automatically, this covers the rest.
globals = {
    -- Resource lifecycle
    "GetCurrentResourceName",
    "GetResourceState",
    "GetResourcePath",
    "GetResourceMetadata",
    "GetNumResourceMetadata",
    "GetInvokingResource",

    -- Player / source
    "source",
    "PlayerData",
    "QBX",
    "QBCore",
    "ESX",

    -- ox_lib
    "lib",
    "cache",

    -- Common framework globals
    "exports",
    "GetGameTimer",
}

read_globals = {
    "vector2", "vector3", "vector4", "quat",
    "Citizen",
    "json",
    "promise",
    "msgpack",
}

-- Ignore some warnings that don't matter for FiveM scripts
ignore = {
    "212", -- Unused argument (common in event handlers)
    "213", -- Unused loop variable
    "631", -- Line is too long
}

-- Per-file overrides
files["config.lua"] = {
    -- Config files define lots of globals intentionally
    ignore = { "111", "112", "113", "131" },
}

files["fxmanifest.lua"] = {
    -- fxmanifest has its own DSL (game, fx_version, etc.)
    std = "+cfxlua",
    ignore = { "111", "112", "113", "121", "122", "131" },
}

exclude_files = {
    ".github/",
    "docs/",
}

max_line_length = false
