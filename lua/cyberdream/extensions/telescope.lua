local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local borderless_telescope = opts.borderless_telescope
    local telescope_style = ""
    if type(opts.borderless_telescope) == "table" then
        borderless_telescope = not opts.borderless_telescope.border
        telescope_style = opts.borderless_telescope.style
    end

    local highlights = {
        TelescopeBorder = { fg = t.bgHighlight },
        TelescopePromptTitle = { fg = t.blue },
        TelescopeResultsTitle = { fg = t.cyan },
        TelescopePromptPrefix = { fg = t.pink },
        TelescopePreviewTitle = { fg = t.magenta },
        TelescopeSelection = { bg = t.bgHighlight },
        TelescopePromptCounter = { fg = t.pink },
        TelescopeMatching = { fg = t.cyan },
    }

    if borderless_telescope then
        highlights.TelescopeBorder = { fg = t.bgAlt, bg = t.bgAlt }
        highlights.TelescopeNormal = { bg = t.bgAlt }
        highlights.TelescopePreviewBorder = { fg = t.bgAlt, bg = t.bgAlt }
        highlights.TelescopePreviewNormal = { bg = t.bgAlt }
        highlights.TelescopePreviewTitle = { fg = t.bgAlt, bg = t.green, bold = true }
        highlights.TelescopePromptTitle = { fg = t.bgAlt, bg = t.red, bold = true }
        highlights.TelescopeResultsBorder = { fg = t.bgAlt, bg = t.bgAlt }
        highlights.TelescopeResultsNormal = { bg = t.bgAlt }
        highlights.TelescopeResultsTitle = { fg = t.bgAlt, bg = t.cyan }
        if telescope_style == "nvchad" then
            highlights.TelescopePromptBorder = { fg = t.bgHighlight, bg = t.bgHighlight }
            highlights.TelescopePromptNormal = { fg = t.fg, bg = t.bgHighlight }
            highlights.TelescopePromptPrefix = { fg = t.red, bg = t.bgHighlight }
        elseif telescope_style == "flat" then
            highlights.TelescopePromptPrefix = { fg = t.blue, bg = t.bgAlt }
            highlights.TelescopePromptCounter = { fg = t.cyan, bg = t.bgAlt }
            highlights.TelescopePromptTitle = { fg = t.bgAlt, bg = t.blue, bold = true }
            highlights.TelescopeResultsTitle = { fg = t.blue, bg = t.bgAlt, bold = true }
        end
    end

    return highlights
end

return M
