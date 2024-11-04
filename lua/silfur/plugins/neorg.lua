return {
    "nvim-neorg/neorg",
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = function()
    require("neorg").setup {
    load = {
      ["core.defaults"] = {},
      ["core.concealer"] = {},
        ["core.keybinds"] = {
          confg = {
        neorg_leader = ",",
          }
        },
      ["core.dirman"] = {
        config = {
          workspaces = {
            notes = "~/Documents/Notes/",
          },
          default_workspace = "notes",
        },
      },
    },
  } end;
}
