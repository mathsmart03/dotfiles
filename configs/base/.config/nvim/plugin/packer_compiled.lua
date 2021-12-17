-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/rejyr/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/rejyr/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/rejyr/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/rejyr/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/rejyr/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["AutoSave.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/AutoSave.nvim",
    url = "https://github.com/Pocco81/AutoSave.nvim"
  },
  ["Comment.nvim"] = {
    config = { "\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FTerm.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/FTerm.nvim",
    url = "https://github.com/numToStr/FTerm.nvim"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\1\2^\0\0\3\0\5\0\n4\0\0\0%\1\1\0>\0\2\0027\0\2\0004\1\0\0%\2\3\0>\1\2\0027\1\4\1>\0\2\1G\0\1\0\topts\26alpha.themes.startify\nsetup\nalpha\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  chadtree = {
    config = { "\27LJ\1\2u\0\0\5\0\a\0\t4\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0003\4\6\0>\0\5\1G\0\1\0\1\0\2\vsilent\2\fnoremap\2\22<cmd>CHADopen<cr>\14<Leader>v\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/chadtree",
    url = "https://github.com/ms-jpq/chadtree"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["filetype.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\1\2­\1\0\0\a\0\n\1\0164\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\3\0004\2\3\0007\2\4\0027\2\5\2%\3\6\0%\4\a\0%\5\b\0003\6\t\0>\2\5\0<\2\0\0>\0\2\1G\0\1\0\1\0\2\vsilent\2\fnoremap\2\20<cmd>Format<CR>\14<Leader>f\6n\20nvim_set_keymap\bapi\bvim\nsetup\14formatter\frequire\3€€À™\4\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\0026\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  indentLine = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/indentLine",
    url = "https://github.com/Yggdroot/indentLine"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-base16"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-base16",
    url = "https://github.com/RRethy/nvim-base16"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\1\2;\0\1\3\0\4\0\0064\1\0\0007\1\1\0017\1\2\0017\2\3\0>\1\2\1G\0\1\0\tbody\20vsnip#anonymous\afn\bvimò\4\1\0\a\0%\0G4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\6\0003\3\4\0001\4\3\0:\4\5\3:\3\a\0023\3\n\0007\4\b\0007\4\t\4>\4\1\2:\4\v\0037\4\b\0007\4\f\4>\4\1\2:\4\r\0037\4\b\0007\4\t\4>\4\1\2:\4\14\0037\4\b\0007\4\f\4>\4\1\2:\4\15\0037\4\b\0007\4\16\4'\5üÿ>\4\2\2:\4\17\0037\4\b\0007\4\16\4'\5\4\0>\4\2\2:\4\18\0037\4\b\0007\4\19\4>\4\1\2:\4\20\0037\4\b\0007\4\21\4>\4\1\2:\4\22\0037\4\b\0007\4\23\0043\5\26\0007\6\24\0007\6\25\6:\6\27\5>\4\2\2:\4\28\3:\3\b\0022\3\b\0003\4\29\0;\4\1\0033\4\30\0;\4\2\0033\4\31\0;\4\3\0033\4 \0;\4\4\0033\4!\0;\4\5\0033\4\"\0;\4\6\0033\4#\0;\4\a\3:\3$\2>\1\2\1G\0\1\0\fsources\1\0\1\tname\tcalc\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\nvsnip\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\t<CR>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<Tab>\f<S-Tab>\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-cursorline"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-cursorline",
    url = "https://github.com/yamatsum/nvim-cursorline"
  },
  ["nvim-lspconfig"] = {
    config = { '\27LJ\1\2©\b\0\0\5\0%\0a4\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0003\4\6\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\a\0%\3\b\0003\4\t\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\n\0%\3\v\0003\4\f\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\r\0%\3\14\0003\4\15\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\16\0%\3\17\0003\4\18\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\19\0%\3\20\0003\4\21\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\22\0%\3\23\0003\4\24\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\25\0%\3\26\0003\4\27\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\28\0%\3\5\0003\4\29\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\30\0%\3\31\0003\4 \0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2!\0%\3\31\0003\4"\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2#\0%\3\31\0003\4$\0>\0\5\1G\0\1\0\1\0\2\vsilent\2\fnoremap\2\ag]\1\0\2\vsilent\2\fnoremap\2\ag[\1\0\2\vsilent\2\fnoremap\2+<cmd>lua vim.lsp.buf.code_action()<CR>\aga\1\0\2\vsilent\2\fnoremap\2\agd\1\0\2\vsilent\2\fnoremap\0020<cmd>lua vim.lsp.buf.workspace_symbol()<CR>\agW\1\0\2\vsilent\2\fnoremap\2/<cmd>lua vim.lsp.buf.document_symbol()<CR>\ag0\1\0\2\vsilent\2\fnoremap\2*<cmd>lua vim.lsp.buf.references()<CR>\agr\1\0\2\vsilent\2\fnoremap\2/<cmd>lua vim.lsp.buf.type_definition()<CR>\b1gD\1\0\2\vsilent\2\fnoremap\2.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<c-k>\1\0\2\vsilent\2\fnoremap\2.<cmd>lua vim.lsp.buf.implementation()<CR>\agD\1\0\2\vsilent\2\fnoremap\2%<cmd>lua vim.lsp.buf.hover()<CR>\6K\1\0\2\vsilent\2\fnoremap\2*<cmd>lua vim.lsp.buf.definition()<CR>\n<c-j>\6n\20nvim_set_keymap\bapi\bvim\0' },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    config = { "\27LJ\1\2v\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\frainbow\1\0\0\1\0\2\18extended_mode\2\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["renamer.nvim"] = {
    config = { '\27LJ\1\2¾\2\0\0\a\0\15\1"4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\4\0004\2\3\0007\2\4\0027\2\5\2%\3\6\0%\4\a\0%\5\b\0003\6\t\0>\2\5\2;\2\1\0014\2\3\0007\2\4\0027\2\5\2%\3\n\0%\4\v\0%\5\b\0003\6\f\0>\2\5\2;\2\2\0014\2\3\0007\2\4\0027\2\5\2%\3\r\0%\4\v\0%\5\b\0003\6\14\0>\2\5\0<\2\0\0>\0\2\1G\0\1\0\1\0\2\vsilent\2\fnoremap\2\6v\1\0\2\vsilent\2\fnoremap\2\15<Leader>rn\6n\1\0\2\vsilent\2\fnoremap\2-<cmd>lua require("renamer").rename()<cr>\t<F2>\6i\20nvim_set_keymap\bapi\bvim\nsetup\frenamer\frequire\a€€À™\4\0' },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/renamer.nvim",
    url = "https://github.com/filipdutescu/renamer.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\1\2Ü\2\0\0\a\0\18\0\0234\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\3\0003\2\b\0003\3\3\0003\4\4\0:\4\5\0033\4\6\0:\4\a\3:\3\t\0023\3\15\0003\4\r\0003\5\v\0003\6\n\0:\6\f\5:\5\14\4:\4\16\3:\3\17\2;\2\1\1>\0\2\1G\0\1\0\vserver\rsettings\1\0\0\18rust-analyzer\1\0\0\16checkOnSave\1\0\0\1\0\1\fcommand\vclippy\ntools\1\0\0\16inlay_hints\1\0\3\27parameter_hints_prefix\5\23other_hints_prefix\5\25show_parameter_hints\1\14runnables\1\0\1\18use_telescope\2\1\0\2\23hover_with_actions\2\17autoSetHints\2\nsetup\15rust-tools\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\1\2ë\2\0\0\4\0\f\0\0234\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0002\2\a\0003\3\4\0;\3\1\0023\3\5\0;\3\2\0023\3\6\0;\3\3\0023\3\a\0;\3\4\0023\3\b\0;\3\5\0023\3\t\0;\3\6\2:\2\n\0012\2\0\0:\2\v\1>\0\2\1G\0\1\0\fexclude\ftabouts\1\0\2\topen\6{\nclose\6}\1\0\2\topen\6[\nclose\6]\1\0\2\topen\6(\nclose\6)\1\0\2\topen\6`\nclose\6`\1\0\2\topen\6\"\nclose\6\"\1\0\2\topen\6'\nclose\6'\1\0\a\21ignore_beginning\2\15act_as_tab\2\21act_as_shift_tab\1\15completion\2\21enable_backwards\2\21backwards_tabkey\f<S-Tab>\vtabkey\n<Tab>\nsetup\vtabout\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tidy.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/tidy.nvim",
    url = "https://github.com/McAuleyPenney/tidy.nvim"
  },
  ["vgit.nvim"] = {
    config = { "\27LJ\1\0022\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\tvgit\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/vgit.nvim",
    url = "https://github.com/tanvirtin/vgit.nvim"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-devicons-emoji"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-devicons-emoji",
    url = "https://github.com/adelarsq/vim-devicons-emoji"
  },
  ["vim-emoji-icon-theme"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-emoji-icon-theme",
    url = "https://github.com/adelarsq/vim-emoji-icon-theme"
  },
  ["vim-nerdtree-syntax-highlight"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-nerdtree-syntax-highlight",
    url = "https://github.com/tiagofumo/vim-nerdtree-syntax-highlight"
  },
  ["vim-sandwich"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-sandwich",
    url = "https://github.com/machakann/vim-sandwich"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\1\2b\0\0\2\0\6\0\n4\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0%\1\5\0>\0\2\1G\0\1\0\23set timeoutlen=500\bcmd\bvim\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\1\2­\1\0\0\a\0\n\1\0164\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\3\0004\2\3\0007\2\4\0027\2\5\2%\3\6\0%\4\a\0%\5\b\0003\6\t\0>\2\5\0<\2\0\0>\0\2\1G\0\1\0\1\0\2\vsilent\2\fnoremap\2\20<cmd>Format<CR>\14<Leader>f\6n\20nvim_set_keymap\bapi\bvim\nsetup\14formatter\frequire\3€€À™\4\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring('\27LJ\1\2©\b\0\0\5\0%\0a4\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0003\4\6\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\a\0%\3\b\0003\4\t\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\n\0%\3\v\0003\4\f\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\r\0%\3\14\0003\4\15\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\16\0%\3\17\0003\4\18\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\19\0%\3\20\0003\4\21\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\22\0%\3\23\0003\4\24\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\25\0%\3\26\0003\4\27\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\28\0%\3\5\0003\4\29\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\30\0%\3\31\0003\4 \0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2!\0%\3\31\0003\4"\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2#\0%\3\31\0003\4$\0>\0\5\1G\0\1\0\1\0\2\vsilent\2\fnoremap\2\ag]\1\0\2\vsilent\2\fnoremap\2\ag[\1\0\2\vsilent\2\fnoremap\2+<cmd>lua vim.lsp.buf.code_action()<CR>\aga\1\0\2\vsilent\2\fnoremap\2\agd\1\0\2\vsilent\2\fnoremap\0020<cmd>lua vim.lsp.buf.workspace_symbol()<CR>\agW\1\0\2\vsilent\2\fnoremap\2/<cmd>lua vim.lsp.buf.document_symbol()<CR>\ag0\1\0\2\vsilent\2\fnoremap\2*<cmd>lua vim.lsp.buf.references()<CR>\agr\1\0\2\vsilent\2\fnoremap\2/<cmd>lua vim.lsp.buf.type_definition()<CR>\b1gD\1\0\2\vsilent\2\fnoremap\2.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<c-k>\1\0\2\vsilent\2\fnoremap\2.<cmd>lua vim.lsp.buf.implementation()<CR>\agD\1\0\2\vsilent\2\fnoremap\2%<cmd>lua vim.lsp.buf.hover()<CR>\6K\1\0\2\vsilent\2\fnoremap\2*<cmd>lua vim.lsp.buf.definition()<CR>\n<c-j>\6n\20nvim_set_keymap\bapi\bvim\0', "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\1\2;\0\1\3\0\4\0\0064\1\0\0007\1\1\0017\1\2\0017\2\3\0>\1\2\1G\0\1\0\tbody\20vsnip#anonymous\afn\bvimò\4\1\0\a\0%\0G4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\6\0003\3\4\0001\4\3\0:\4\5\3:\3\a\0023\3\n\0007\4\b\0007\4\t\4>\4\1\2:\4\v\0037\4\b\0007\4\f\4>\4\1\2:\4\r\0037\4\b\0007\4\t\4>\4\1\2:\4\14\0037\4\b\0007\4\f\4>\4\1\2:\4\15\0037\4\b\0007\4\16\4'\5üÿ>\4\2\2:\4\17\0037\4\b\0007\4\16\4'\5\4\0>\4\2\2:\4\18\0037\4\b\0007\4\19\4>\4\1\2:\4\20\0037\4\b\0007\4\21\4>\4\1\2:\4\22\0037\4\b\0007\4\23\0043\5\26\0007\6\24\0007\6\25\6:\6\27\5>\4\2\2:\4\28\3:\3\b\0022\3\b\0003\4\29\0;\4\1\0033\4\30\0;\4\2\0033\4\31\0;\4\3\0033\4 \0;\4\4\0033\4!\0;\4\5\0033\4\"\0;\4\6\0033\4#\0;\4\a\3:\3$\2>\1\2\1G\0\1\0\fsources\1\0\1\tname\tcalc\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\nvsnip\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\t<CR>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<Tab>\f<S-Tab>\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\1\2b\0\0\2\0\6\0\n4\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0%\1\5\0>\0\2\1G\0\1\0\23set timeoutlen=500\bcmd\bvim\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\1\2^\0\0\3\0\5\0\n4\0\0\0%\1\1\0>\0\2\0027\0\2\0004\1\0\0%\2\3\0>\1\2\0027\1\4\1>\0\2\1G\0\1\0\topts\26alpha.themes.startify\nsetup\nalpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: renamer.nvim
time([[Config for renamer.nvim]], true)
try_loadstring('\27LJ\1\2¾\2\0\0\a\0\15\1"4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\4\0004\2\3\0007\2\4\0027\2\5\2%\3\6\0%\4\a\0%\5\b\0003\6\t\0>\2\5\2;\2\1\0014\2\3\0007\2\4\0027\2\5\2%\3\n\0%\4\v\0%\5\b\0003\6\f\0>\2\5\2;\2\2\0014\2\3\0007\2\4\0027\2\5\2%\3\r\0%\4\v\0%\5\b\0003\6\14\0>\2\5\0<\2\0\0>\0\2\1G\0\1\0\1\0\2\vsilent\2\fnoremap\2\6v\1\0\2\vsilent\2\fnoremap\2\15<Leader>rn\6n\1\0\2\vsilent\2\fnoremap\2-<cmd>lua require("renamer").rename()<cr>\t<F2>\6i\20nvim_set_keymap\bapi\bvim\nsetup\frenamer\frequire\a€€À™\4\0', "config", "renamer.nvim")
time([[Config for renamer.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\0026\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: chadtree
time([[Config for chadtree]], true)
try_loadstring("\27LJ\1\2u\0\0\5\0\a\0\t4\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0003\4\6\0>\0\5\1G\0\1\0\1\0\2\vsilent\2\fnoremap\2\22<cmd>CHADopen<cr>\14<Leader>v\6n\20nvim_set_keymap\bapi\bvim\0", "config", "chadtree")
time([[Config for chadtree]], false)
-- Config for: rust-tools.nvim
time([[Config for rust-tools.nvim]], true)
try_loadstring("\27LJ\1\2Ü\2\0\0\a\0\18\0\0234\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\3\0003\2\b\0003\3\3\0003\4\4\0:\4\5\0033\4\6\0:\4\a\3:\3\t\0023\3\15\0003\4\r\0003\5\v\0003\6\n\0:\6\f\5:\5\14\4:\4\16\3:\3\17\2;\2\1\1>\0\2\1G\0\1\0\vserver\rsettings\1\0\0\18rust-analyzer\1\0\0\16checkOnSave\1\0\0\1\0\1\fcommand\vclippy\ntools\1\0\0\16inlay_hints\1\0\3\27parameter_hints_prefix\5\23other_hints_prefix\5\25show_parameter_hints\1\14runnables\1\0\1\18use_telescope\2\1\0\2\23hover_with_actions\2\17autoSetHints\2\nsetup\15rust-tools\frequire\0", "config", "rust-tools.nvim")
time([[Config for rust-tools.nvim]], false)
-- Config for: tabout.nvim
time([[Config for tabout.nvim]], true)
try_loadstring("\27LJ\1\2ë\2\0\0\4\0\f\0\0234\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0002\2\a\0003\3\4\0;\3\1\0023\3\5\0;\3\2\0023\3\6\0;\3\3\0023\3\a\0;\3\4\0023\3\b\0;\3\5\0023\3\t\0;\3\6\2:\2\n\0012\2\0\0:\2\v\1>\0\2\1G\0\1\0\fexclude\ftabouts\1\0\2\topen\6{\nclose\6}\1\0\2\topen\6[\nclose\6]\1\0\2\topen\6(\nclose\6)\1\0\2\topen\6`\nclose\6`\1\0\2\topen\6\"\nclose\6\"\1\0\2\topen\6'\nclose\6'\1\0\a\21ignore_beginning\2\15act_as_tab\2\21act_as_shift_tab\1\15completion\2\21enable_backwards\2\21backwards_tabkey\f<S-Tab>\vtabkey\n<Tab>\nsetup\vtabout\frequire\0", "config", "tabout.nvim")
time([[Config for tabout.nvim]], false)
-- Config for: nvim-ts-rainbow
time([[Config for nvim-ts-rainbow]], true)
try_loadstring("\27LJ\1\2v\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\frainbow\1\0\0\1\0\2\18extended_mode\2\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-ts-rainbow")
time([[Config for nvim-ts-rainbow]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufWritePre * ++once lua require("packer.load")({'tidy.nvim'}, { event = "BufWritePre *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'vgit.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
