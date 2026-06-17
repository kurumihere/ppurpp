local M = {}

local defaults = {
  terminal_colors = true,
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  inverse = true,
  contrast = "",
  transparent_mode = false,
}

local config = vim.deepcopy(defaults)

local function merge(dst, src)
  for k, v in pairs(src or {}) do
    if type(v) == "table" and type(dst[k]) == "table" then
      merge(dst[k], v)
    else
      dst[k] = v
    end
  end
end

local function set_global(name, value)
  vim.g["ppurpp_" .. name] = value
end

function M.setup(opts)
  config = vim.deepcopy(defaults)
  merge(config, opts or {})

  set_global("terminal_colors", config.terminal_colors)
  set_global("undercurl", config.undercurl)
  set_global("underline", config.underline)
  set_global("bold", config.bold)
  set_global("strikethrough", config.strikethrough)
  set_global("inverse", config.inverse)
  set_global("contrast", config.contrast)
  set_global("transparent_mode", config.transparent_mode)

  set_global("italic_strings", config.italic.strings)
  set_global("italic_emphasis", config.italic.emphasis)
  set_global("italic_comments", config.italic.comments)
  set_global("italic_operators", config.italic.operators)
  set_global("italic_folds", config.italic.folds)
end

function M.config()
  return vim.deepcopy(config)
end

return M
