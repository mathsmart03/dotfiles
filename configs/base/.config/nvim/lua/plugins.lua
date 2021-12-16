return require('packer').startup(function()
    -- package manager - packer
    use 'wbthomason/packer.nvim'

    -- speed up loading time
    use 'lewis6991/impatient.nvim'
    use 'nathom/filetype.nvim'

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- rainbow parentheses
    use {
    'p00f/nvim-ts-rainbow',
    config = function()
    require("nvim-treesitter.configs").setup {
        rainbow = {
            enable = true,
            -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
            extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
            max_file_lines = nil, -- Do not enable for files with more than n lines, int
            -- colors = {}, -- table of hex strings
            -- termcolors = {} -- table of colour name strings
       }
     }
     end
    }


    -- show indent
    use 'Yggdroot/indentLine'

    -- tabout
    use {
        'abecodes/tabout.nvim',
		branch = 'master',
         config = function()
         require('tabout').setup {
            tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
            backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
            act_as_tab = true, -- shift content if tab out is not possible
            act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
            enable_backwards = true, -- well ...
            completion = true, -- if the tabkey is used in a completion pum
            tabouts = {
              {open = "'", close = "'"},
              {open = '"', close = '"'},
              {open = '`', close = '`'},
              {open = '(', close = ')'},
              {open = '[', close = ']'},
              {open = '{', close = '}'}
            },
            ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
            exclude = {} -- tabout will ignore these filetypes
        }
        end
    }

    -- tidy whitespace
    use {
        "McAuleyPenney/tidy.nvim",
        event = "BufWritePre"
    }

    -- vscode ui style renamer
    use {
        'filipdutescu/renamer.nvim',
        branch = 'master',
        nequires = {'nvim-lua/plenary.nvim'},
        config = function() require('renamer').setup {
            vim.api.nvim_set_keymap('i', '<F2>', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true }),
            vim.api.nvim_set_keymap('n', '<Leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true }),
            vim.api.nvim_set_keymap('v', '<Leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true }),
        }
        end
    }

    -- autosave
    use 'Pocco81/AutoSave.nvim'

    -- comment
    use {
      'numToStr/Comment.nvim',
       config = function() require('Comment').setup() end
    }

    -- auto-pair
    use 'jiangmiao/auto-pairs'
    use 'machakann/vim-sandwich'

    -- floating terminal
    use 'numToStr/FTerm.nvim'

    -- git
    use({
        'tanvirtin/vgit.nvim',
        event = 'BufWinEnter',
        requires = {
            'nvim-lua/plenary.nvim',
        },
        config = function() require('vgit').setup() end
    })
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
		config = function() require('gitsigns').setup() end
        -- tag = 'release' -- To use the latest release
    }
    use {
		'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim'
    }
    -- CHAD filesystem
    use {
		'ms-jpq/chadtree',
		branch = 'chad',
    	run = 'python3 -m chadtree deps',
    	config = function()
    	    vim.api.nvim_set_keymap('n', '<Leader>v', '<cmd>CHADopen<cr>', { noremap = true, silent = true })
        end
    }

    -- statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
		config = function() require('lualine').setup() end
    }

    -- startup
    use {
        'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.opts)
        end
    }

    -- Fuzzy Finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/plenary.nvim'}
    }

    -- Formmater
    use {
		'mhartington/formatter.nvim',
     	config = function() require('formatter').setup {
     	    vim.api.nvim_set_keymap('n', '<Leader>f', [[<cmd>Format<CR>]], { noremap = true, silent = true })
     	}
        end
    }

    -- Collection of common configurations for the Nvim LSP client
    use {
		'neovim/nvim-lspconfig',
     	config = function()
     	    -- keybinds
     	    vim.api.nvim_set_keymap('n', '<c-j>', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
     	    vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
     	    vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true })
     	    vim.api.nvim_set_keymap('n', '<c-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', { noremap = true, silent = true })
     	    vim.api.nvim_set_keymap('n', '1gD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', { noremap = true, silent = true })
     	    vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
     	    vim.api.nvim_set_keymap('n', 'g0', '<cmd>lua vim.lsp.buf.document_symbol()<CR>', { noremap = true, silent = true })
     	    vim.api.nvim_set_keymap('n', 'gW', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>', { noremap = true, silent = true })
     	    vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
     	    vim.api.nvim_set_keymap('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
     	    vim.api.nvim_set_keymap('n', 'g[', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
     	    vim.api.nvim_set_keymap('n', 'g]', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
        end
    }

    -- Autocompletion framework
    use {
		'hrsh7th/nvim-cmp',
     	requires = {
     	    'hrsh7th/cmp-nvim-lsp',
     	    'hrsh7th/cmp-nvim-lua',
     	    'hrsh7th/cmp-vsnip',
     	    'hrsh7th/cmp-vsnip',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-buffer',
		    'hrsh7th/cmp-calc',
    	    'saadparwaiz1/cmp_luasnip',
    	},
    	config = function()
    	    local cmp = require'cmp'
            cmp.setup {
                snippet = {
                  expand = function(args)
                      vim.fn["vsnip#anonymous"](args.body)
                  end,
                },
                mapping = {
                  ['<C-p>'] = cmp.mapping.select_prev_item(),
                  ['<C-n>'] = cmp.mapping.select_next_item(),
                  -- Add tab support
                  ['<S-Tab>'] = cmp.mapping.select_prev_item(),
                  ['<Tab>'] = cmp.mapping.select_next_item(),
                  ['<C-d>'] = cmp.mapping.scroll_docs(-4),
                  ['<C-f>'] = cmp.mapping.scroll_docs(4),
                  ['<C-Space>'] = cmp.mapping.complete(),
                  ['<C-e>'] = cmp.mapping.close(),
                  ['<CR>'] = cmp.mapping.confirm({
                    behavior = cmp.ConfirmBehavior.Insert,
                    select = true,
                  })
                },

               -- Installed sources
                sources = {
                    { name = 'nvim_lsp' },
                    { name = 'nvim_lua' },
                    { name = 'luasnip' },
                    { name = 'vsnip' },
                    { name = 'path' },
                    { name = 'buffer' },
                    { name = 'calc' },
                },
            }
        end
    }

    -- Adds extra functionality over rust analyzer
    use {
        'simrat39/rust-tools.nvim',
		requires = {'neovim/nvim-lspconfig'},
        config = function()
			require('rust-tools').setup({
            -- -- nvim_lsp object
            -- local nvim_lsp = require('lspconfig')

            -- local opts = {
            --     tools = {
            --         autoSetHints = true,
            --         hover_with_actions = true,
            --         runnables = {
            --             use_telescope = true
            --         },
            --         inlay_hints = {
            --             show_parameter_hints = false,
            --             parameter_hints_prefix = "",
            --             other_hints_prefix = "",
            --         },
            --     },

            --     -- all the opts to send to nvim-lspconfig
            --     -- these override the defaults set by rust-tools.nvim
            --     -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
            --     server = {
            --         -- on_attach is a callback called when the language server attachs to the buffer
            --         -- on_attach = on_attach,
            --         settings = {
            --             -- to enable rust-analyzer settings visit:
            --             -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
            --             ["rust-analyzer"] = {
            --                 -- enable clippy on save
            --                 checkOnSave = {
            --                     command = "clippy"
            --                 },
            --             }
            --         }
            --     },
            -- }
            -- require('rust-tools').setup(opts)
        })
        end
    }

    -- Snippet engine
    use 'hrsh7th/vim-vsnip'

    -- color stuff
    use 'RRethy/nvim-base16'
    use 'tiagofumo/vim-nerdtree-syntax-highlight'
    use 'ryanoasis/vim-devicons'
    use 'adelarsq/vim-devicons-emoji'
    use 'adelarsq/vim-emoji-icon-theme'
    use 'kyazdani42/nvim-web-devicons'

end)
