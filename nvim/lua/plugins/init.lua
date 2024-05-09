local plugins = {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier"
  		},
  	},
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "dart"
  		},
  	},
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    event = "BufRead",
    config = function ()
      require("todo-comments").setup()
    end
  },
  {
    "brenoprata10/nvim-highlight-colors",
    config = function ()
      require("nvim-highlight-colors").setup {
        -- ---Render style
        -- ---@usage 'background'|'foreground'|'virtual'
        -- render = 'background',
        --
        -- ---Set virtual symbol (requires render to be set to 'virtual')
        -- virtual_symbol = '■',
        --
        -- ---Highlight named colors, e.g. 'green'
        -- enable_named_colors = true,
        --
        -- ---Highlight tailwind colors, e.g. 'bg-blue-500'
        -- enable_tailwind = false,
        --
        -- ---Set custom colors
        -- ---Label must be properly escaped with '%' to adhere to `string.gmatch`
        -- --- :help string.gmatch
        -- custom_colors = {
        --   { label = '%-%-theme%-primary%-color', color = '#0f1219' },
        --   { label = '%-%-theme%-secondary%-color', color = '#5a5d64' },
        -- }
      }
    end
  },
}

return plugins
