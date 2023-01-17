local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}


M.nvterm = {
  n = {
    ["<leader>cc"] = {
      function()
        require("nvterm.terminal").send("clear && g++ -o out " .. vim.fn.expand "%" .. " && ./out", "horizontal")
      end,

      "compile & run a cpp file",
    },
    ["<leader>py"] = {
      function()
        require("nvterm.terminal").send("clear && python " .. vim.fn.expand "%", "horizontal")
      end,

      "compile & run a cpp file",
    },
    ["<leader>jm"] = {
      function()
        require("nvterm.terminal").send("clear && javac " .. vim.fn.expand "%" .. " && java " ..  vim.fn.expand "%:r", "horizontal")
      end,

      "compile & run a cpp file",
    },
  },
}
-- more keybinds!

return M
