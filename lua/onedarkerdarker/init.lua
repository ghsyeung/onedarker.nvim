vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "onedarkerdarker"

local util = require("onedarkerdarker.util")
Config = require("onedarkerdarker.config")
C = require("onedarkerdarker.palette")
local highlights = require("onedarkerdarker.highlights")
local Treesitter = require("onedarkerdarker.Treesitter")
local markdown = require("onedarkerdarker.markdown")
local Whichkey = require("onedarkerdarker.Whichkey")
local Git = require("onedarkerdarker.Git")
local LSP = require("onedarkerdarker.LSP")
local Quickscope = require("onedarkerdarker.Quickscope")
local Telescope = require("onedarkerdarker.Telescope")
local NvimTree = require("onedarkerdarker.NvimTree")
local Lir = require("onedarkerdarker.Lir")
local Buffer = require("onedarkerdarker.Buffer")
local StatusLine = require("onedarkerdarker.StatusLine")
local IndentBlankline = require("onedarkerdarker.IndentBlankline")
local Dashboard = require("onedarkerdarker.Dashboard")
local DiffView = require("onedarkerdarker.DiffView")
local Bookmarks = require("onedarkerdarker.Bookmarks")
local Bqf = require("onedarkerdarker.Bqf")
local Cmp = require("onedarkerdarker.Cmp")
local Gps = require("onedarkerdarker.Gps")
local Packer = require("onedarkerdarker.Packer")
local SymbolOutline = require("onedarkerdarker.SymbolOutline")
local Notify = require("onedarkerdarker.Notify")
local Misc = require("onedarkerdarker.Misc")
local Crates = require("onedarkerdarker.Crates")


local skeletons = {
    highlights, Treesitter, markdown, Whichkey, Git, LSP, Quickscope, Telescope, NvimTree, Lir, Buffer, StatusLine, IndentBlankline, Dashboard, DiffView, Bookmarks, Bqf, Cmp, Gps, Packer, SymbolOutline, Notify, Misc, Crates
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end