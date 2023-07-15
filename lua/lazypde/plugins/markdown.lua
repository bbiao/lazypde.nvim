return {
  -- Markdown
  {
    "iamcco/markdown-preview.nvim",
    lazy = true,
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    ft = "markdown",
    cmd = { "MarkdownPreview" },
    dependencies = { "zhaozg/vim-diagram", "aklt/plantuml-syntax" },
  },
  {
    "jakewvincent/mkdnflow.nvim",
    config = function()
      require("mkdnflow").setup({})
    end,
    ft = "markdown",
  },
  {
    "nvim-neorg/neorg",
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.presenter"] = {
            config = {
              zen_mode = "truezen",
            },
          },
        },
      })
    end,
    ft = "norg",
    dependencies = { "nvim-lua/plenary.nvim", "Pocco81/TrueZen.nvim" },
    enabled = false,
  },
  {
    "phaazon/mind.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("mind").setup()
    end,
    enabled = false,
  },
}
