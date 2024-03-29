-- TODO: Test
-- HACK: asdfa
return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  --
  {
    "CRAG666/code_runner.nvim",
    event = "User AstroFile",
    config = function()
      require("code_runner").setup {
        filetype = {
          java = {
            "cd $dir &&",
            "javac $fileName &&",
            "java $fileNameWithoutExt",
          },
          -- python = "python3 -u",
          -- typescript = "deno run",
          cpp = {
            "cd $dir &&",
            "g++ $fileName &&",
            "./a.out",
          },
          rust = {
            "cd $dir &&",
            "cargo run $fileName",
            -- "rustc $fileName &&",
            -- "$dir$fileNameWithoutExt",
          },
          zig = {
            "cd $dir &&",
            "zig run $fileName",
          },
          python = {
            "cd $dir &&",
            "python3 $fileName",
          },
        },
      }
    end,
    -- cmd = { "TodoQuickFix" },
    -- let s:mappingsState=1
    --
    --   command! TM call ToggleMappings()
    --
    -- function! ToggleMappings()
    -- if s:mappingsState
    --   nnoremap <F1> :echo "mapping 1"<CR>
    --   " Or any mapping you want to create
    --   else
    --   unmap <F1>
    --   " Or any key you want to unmap
    --   endif
    --
    --   let s:mappingsState = !s:mappingsState
    --   endfunction
    keys = {
      { "<leader>r", "<cmd>RunCode<cr>", desc = "Run code" },
      -- { "<leader>i", "<cmd>RunClose<cr>", desc = "Run close" },
    },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- config = function()
    --   require("todo-comments").setup {
    --     -- your configuration comes here
    --     -- or leave it empty to use the default settings
    --     -- refer to the configuration section below
    --   }
    -- end,
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
  },
  {
    "mbbill/undotree",
    keys = {
      { "<leader>y", "<cmd>UndotreeToggle<cr>", desc = "undotree" },
    },
  },
}
