local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = {
      "black", -- The key name you'll use in the UI/commands
      -- The command to execute (will respect $PATH)
      command = "black",
      -- Or specify the full path if 'black' isn't in your PATH:
      -- command = "/usr/local/bin/black",
      -- Optional arguments
      args = {},
    },
  },
  formatters = {
    -- Python
    black = {
      prepend_args = {
        "--fast",
        "--line-length",
        "88",
      },
    },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 1000,
    lsp_fallback = true,
  },
}

require("conform").setup(options)

return options
