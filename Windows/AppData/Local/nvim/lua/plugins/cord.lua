return {'vyfor/cord.nvim',
  config = function()
    build = './build || .\\build'
    event = 'VeryLazy'
    opts = {} -- calls require('cord').setup()
  end
}
