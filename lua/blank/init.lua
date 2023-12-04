local M = {}

local pp = require("nui.popup")
local ln = require("nui.line")
local tt = require("nui.text")
local tr = require("nui.tree")
local lo = require("nui.layout")

local tpp = pp({ border = "double" })
local lpp = pp({ border = "single" })
local rpp = pp({ border = "single" })

local layout = lo(
    {
        position = "100%",
        size = {
            width = "100%",
            height = 40,
        },
    },
    lo.Box({
        lo.Box(tpp, { size = "40%" }),
        lo.Box({
            lo.Box(lpp, { size = "50%" }),
            lo.Box(rpp, { size = "50%" }),
        }, { dir = "row", size = "60%" }),
    }, { dir = "col" })
)

function M.setup()
    layout:mount()
end

return M

