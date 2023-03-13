vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  --packer

  use 'wbthomason/packer.nvim'

  --colorscheme

  use 'shaunsingh/nord.nvim'

  --search

  use { 'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = function() 
    require'telescope'.setup {}
  end, }

  -- autocomplete

  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- Highlight, edit, and navigate code using a fast incremental parsing library

  use 'nvim-treesitter/nvim-treesitter'

  -- etc

  use 'powerman/vim-plugin-ruscmd'

end)
