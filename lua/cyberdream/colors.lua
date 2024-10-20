---@class CyberdreamColors
local M = {}

---@class CyberdreamColorLight
---@field bg "#ffffff"|string
---@field bgAlt "#eaeaea"|string
---@field bgHighlight "#acacac"|string
---@field bg_solid? string
---@field fg "#16181a"|string
---@field grey "#7b8496"|string
---@field blue "#0057d1"|string
---@field green "#008b0c"|string
---@field cyan "#008c99"|string
---@field red "#d11500"|string
---@field yellow "#997b00"|string
---@field magenta "#d100bf"|string
---@field pink "#f40064"|string
---@field orange "#d17c00"|string
---@field purple "#a018ff"|string

---@class CyberdreamColorDefault
---@field bg "#0b0c0f"|string
---@field bgAlt "#0E0F13"|string
---@field bgHighlight "#2E303E"|string
---@field bg_solid? string
---@field fg "#D5D8DA"|string
---@field grey "#6C6F93"|string
---@field blue "#26BBD9"|string
---@field green "#29D398"|string
---@field cyan "#59E1E3"|string
---@field red "#E95678"|string
---@field yellow "#FAB795"|string
---@field magenta "#EE64AC"|string
---@field pink "#E9436D"|string
---@field orange "#F09483"|string
---@field purple "#B877DB"|string

---@class CyberdreamColors
---@field default CyberdreamColorDefault
M.default = {
    bg = "#0b0c0f",                -- Editor background
    bgAlt = "#0E0F13",             -- SideBar background
    bgHighlight = "#2E303E",       -- Selection background
    fg = "#D5D8DA",                -- Foreground (text)
    grey = "#6C6F93",              -- Grey (indent guides, etc.)
    blue = "#26BBD9",              -- Blue (function names, etc.)
    green = "#29D398",             -- Green (ansi green)
    cyan = "#59E1E3",              -- Cyan (ansi cyan)
    red = "#E95678",               -- Red (error foreground)
    yellow = "#FAB795",            -- Yellow (ansi yellow, strings)
    magenta = "#EE64AC",           -- Magenta (ansi magenta)
    pink = "#E9436D",              -- Pink (active links)
    orange = "#F09483",            -- Orange (constants)
    purple = "#B877DB",            -- Purple (keywords)
}

---@class CyberdreamColors
---@field light CyberdreamColorLight
M.light = {
    bg = "#ffffff",                -- White background (light mode)
    bgAlt = "#eaeaea",             -- Light alternative background
    bgHighlight = "#acacac",       -- Light mode highlight background
    fg = "#16181a",                -- Dark text for light mode
    grey = "#7b8496",              -- Neutral grey
    blue = "#0057d1",              -- Blue (light mode)
    green = "#008b0c",             -- Green (light mode)
    cyan = "#008c99",              -- Cyan (light mode)
    red = "#d11500",               -- Red (light mode)
    yellow = "#997b00",            -- Yellow (light mode)
    magenta = "#d100bf",           -- Magenta (light mode)
    pink = "#f40064",              -- Pink (light mode)
    orange = "#d17c00",            -- Orange (light mode)
    purple = "#a018ff",            -- Purple (light mode)
}

return M
