-- local colorscheme = "onenord"
--
-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
--   vim.notify("colorscheme " .. colorscheme .. " not found!")
--   return
-- end
local _M = {}

local colors = {
  nord = {
    bg = "#2e3440",
    fg = "#ECEFF4",
    red = "#bf616a",
    orange = "#d08770",
    yellow = "#ebcb8b",
    blue = "#5e81ac",
    green = "#a3be8c",
    cyan = "#88c0d0",
    magenta = "#b48ead",

    bg0 = "#949fb5",
    bg1 = "#4C566A",
    bg2 = "#434C5E",
    bg3 = "#3B4252",
    bg4 = "#242932",
    bg5 = "#1e222a",
    bg6 = "#1c1f26",
  },
  nord_light = {
    bg = "#FFFFFF",
    fg = "#2E3440",
    red = "#CB4F53",
    blue = "#3879C5",
    orange = "#EE5E25",
    yellow = "#BA793E",
    purple = "#9F4ACA",
    green = "#48A53D",
    cyan = "#3EA1AD",
    magenta = "#5a32a3",

    bg0 = "#3879C5",
    bg1 = "#F8F8F8",
    bg2 = "#F4F4F4",
    bg3 = "#EEEEEE",
    bg4 = "#E9E9E9",
    bg5 = "#DFDFDF",
    bg6 = "#D8D8D8",
  },
}

_M.colors = colors.nord_light

local function custom_highlights()
  return {
    VertSplit = { fg = _M.colors.bg5 },
    BufferLineIndicatorSelected = { fg = _M.colors.cyan, bg = _M.colors.bg },
    BufferLineFill = { fg = _M.colors.fg, bg = _M.colors.bg4 },
    NvimTreeNormal = { fg = _M.colors.fg, bg = _M.colors.bg4 },
    WhichKeyFloat = { bg = _M.colors.bg4 },
    GitSignsAdd = { fg = _M.colors.green },
    GitSignsChange = { fg = _M.colors.orange },
    GitSignsDelete = { fg = _M.colors.red },
    NvimTreeFolderIcon = { fg = _M.colors.bg0 },
    NvimTreeIndentMarker = { fg = _M.colors.bg1 },

    NormalFloat = { bg = _M.colors.bg4 },
    FloatBorder = { bg = _M.colors.bg4, fg = _M.colors.bg4 },

    TelescopeSelection = { bg = _M.colors.bg4 },

    TelescopePromptPrefix = { bg = _M.colors.bg4 },
    TelescopePromptNormal = { bg = _M.colors.bg4 },
    TelescopeResultsNormal = { bg = _M.colors.bg5 },
    TelescopePreviewNormal = { bg = _M.colors.bg6 },

    TelescopePromptBorder = { bg = _M.colors.bg4, fg = _M.colors.bg4 },
    TelescopeResultsBorder = { bg = _M.colors.bg5, fg = _M.colors.bg5 },
    TelescopePreviewBorder = { bg = _M.colors.bg6, fg = _M.colors.bg6 },

    TelescopePromptTitle = { fg = _M.colors.bg4, bg = _M.colors.bg4 },
    TelescopeResultsTitle = { fg = _M.colors.bg5, bg = _M.colors.bg5 },
    TelescopePreviewTitle = { fg = _M.colors.bg6, bg = _M.colors.bg6 },

    Pmenu = { bg = _M.colors.bg4 },
    PMenuThumb = { bg = _M.colors.bg6 },

    LspFloatWinNormal = { fg = _M.colors.fg, bg = _M.colors.bg },
    LspFloatWinBorder = { fg = _M.colors.bg },

    IndentBlanklineChar = { fg = _M.colors.bg1, style = "nocombine" },
    IndentBlanklineContextChar = { fg = _M.colors.bg0, style = "nocombine" },
    CursorLine = { bg = _M.colors.bg4 },
  }
end

local function polyfill_custom_highlights()
  local customs = custom_highlights()
  for group, conf in pairs(customs) do
    vim.api.nvim_set_hl(0, group, conf)
  end
end

_M.init = function()
--   if theme and colors[theme] then
--     _M.colors = colors[theme]
--   end

--   if theme == "nord_light" then
    local _onenord, onenord = pcall(require, "onenord")

    if not _onenord then
      return
    end
    onenord.setup {
      theme = "light",
      borders = true,
      fade_nc = false,
      styles = {
        comments = "italic",
        strings = "NONE",
        keywords = "NONE",
        functions = "italic",
        variables = "bold",
        diagnostics = "underline",
      },
      disable = {
        background = false,
        cursorline = false,
        eob_lines = true,
      },
      custom_highlights = custom_highlights(),
      custom_color = custom_highlights(),
    }
--   else
--     local _onenord, onenord = pcall(require, "onenord")

--     if not _onenord then
--       return
--     end

--     onenord.setup {
--       borders = true,
--       fade_nc = false,
--       styles = {
--         comments = "italic",
--         strings = "NONE",
--         keywords = "NONE",
--         functions = "italic",
--         variables = "bold",
--         diagnostics = "underline",
--       },
--       disable = {
--         background = false,
--         cursorline = false,
--         eob_lines = true,
--       },
--       custom_highlights = custom_highlights(),
--     }
--   end
end

return _M
