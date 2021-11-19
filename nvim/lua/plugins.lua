vim.cmd [[packadd packer.nvim]]

require('packer').startup(function() 
    use 'wbthomason/packer.nvim'
    use {'neoclide/coc.nvim', branch = 'release'}
    use { 'junegunn/fzf', run = ':call fzf#install()' }
    use "junegunn/fzf.vim"
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require'nvim-tree'.setup {} end
    }
    use 'lukas-reineke/indent-blankline.nvim'
    use 'terrortylor/nvim-comment'
    use 'ray-x/lsp_signature.nvim'
    use 'EdenEast/nightfox.nvim'
end)

-- indent_blankline configuration
vim.opt.list = true
vim.opt.listchars:append("eol:↴")

require('indent_blankline').setup {
    show_end_of_line = true,
}

-- nvim-tree configuration
require('nvim-tree').setup()

-- nvim_comment configuration
require('nvim_comment').setup()
