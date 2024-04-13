return {
      'MeanderingProgrammer/dashboard.nvim',
      event = 'VimEnter',
      dependencies = {
        {"MaximilianLloyd/ascii.nvim", dependencies = {"MunifTanjim/nui.nvim"} },
      },
      config = function()
          require('dashboard').setup({
              -- Dashboard header
              header = require("ascii").art.animals.cats.luna,
              -- Format to display date in
              date_format = nil,
              -- List of directory paths
              directories = {
                '~/.config',
                '~/Documents/code',
                '~/Downloads',
                '~/',
              },
              -- Sections to add at bottom, these can be string references to 
              -- functions in sections.lua, custom strings, or custom functions
              footer = {},
              -- Gets called after directory is changed and is provided with the
              -- directory string as an argument
              on_load = function(dir)
                  -- Do nothing
              end,
              -- Highlight groups to use for various components
              highlight_groups = {
                  header = 'Constant',
                  icon = 'Type',
                  directory = 'Delimiter',
                  hotkey = 'Statement',
              },
          })
      end,
  }
