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
local package_path_str = "/home/rejyr/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/rejyr/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/rejyr/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/rejyr/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/rejyr/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["DAPInstall.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/DAPInstall.nvim",
    url = "https://github.com/Pocco81/DAPInstall.nvim"
  },
  ["FTerm.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\n\0\0176\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0'\3\4\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\0025<C-\\><C-n><CMD>lua require(\"FTerm\").toggle()<CR>\6t\1\0\2\vsilent\2\fnoremap\2+<CMD>lua require(\"FTerm\").toggle()<CR>\n<A-i>\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/FTerm.nvim",
    url = "https://github.com/numToStr/FTerm.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\6\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2!<cmd>BufferLineCyclePrev<CR>\14<leader>[\1\0\2\vsilent\2\fnoremap\2!<cmd>BufferLineCycleNext<CR>\14<leader>]\6n\20nvim_set_keymap\bapi\bvim\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  chadtree = {
    config = { "\27LJ\2\nu\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\22<cmd>CHADopen<CR>\14<Leader>v\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/chadtree",
    url = "https://github.com/ms-jpq/chadtree"
  },
  ["cmd-parser.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/cmd-parser.nvim",
    url = "https://github.com/winston0410/cmd-parser.nvim"
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
  cmp_luasnip = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["crates.nvim"] = {
    after_files = { "/home/rejyr/.local/share/nvim/site/pack/packer/opt/crates.nvim/after/plugin/cmp_crates.lua" },
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vcrates\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/crates.nvim",
    url = "https://github.com/saecki/crates.nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["filetype.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\b\0\f5\0\0\0005\1\6\0'\2\1\0006\3\2\0009\3\3\3'\5\4\0B\3\2\2'\4\5\0&\2\4\2>\2\1\1=\1\a\0L\0\2\0\targs\1\3\0\0\0\6- /.config/stylua/stylua.toml\tHOME\vgetenv\aos\19--config-path \1\0\2\bexe\vstylua\nstdin\2S\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\18--emit=stdout\19--edition=2021\1\0\2\bexe\frustfmt\nstdin\2�\1\1\0\6\0\17\0\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0005\2\15\0005\3\v\0004\4\3\0003\5\n\0>\5\1\4=\4\f\0034\4\3\0003\5\r\0>\5\1\4=\4\14\3=\3\16\2B\0\2\1K\0\1\0\rfiletype\1\0\0\trust\0\blua\1\0\0\0\nsetup\14formatter\frequire\1\0\2\vsilent\2\fnoremap\2\20<cmd>Format<CR>\14<Leader>f\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\6\0\23\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\v\0'\4\f\0005\5\r\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\17\0'\4\18\0005\5\19\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\20\0'\4\21\0005\5\22\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\21<cmd>HopLine<cr>\15<leader>jl\1\0\2\vsilent\2\fnoremap\2\22<cmd>HopChar1<cr>\14<leader>j\1\0\2\vsilent\2\fnoremap\2\22<cmd>HopChar2<cr>\15<leader>j2\1\0\2\vsilent\2\fnoremap\2\24<cmd>HopPattern<cr>\15<leader>jp\1\0\2\vsilent\2\fnoremap\2\21<cmd>HopWord<cr>\15<leader>jw\6n\20nvim_set_keymap\bapi\bvim\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\n\0\0186\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0009\0\3\0\18\2\0\0009\0\4\0'\3\5\0B\0\3\0016\0\6\0'\2\a\0B\0\2\0029\0\b\0005\2\t\0B\0\2\1K\0\1\0\1\0\2\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\feol:↴\vappend\14listchars\tlist\bopt\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mini.nvim"] = {
    config = { "\27LJ\2\n\\\0\0\3\0\4\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\17mini.starter\nsetup\18mini.surround\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/mini.nvim",
    url = "https://github.com/echasnovski/mini.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["neovim-session-manager"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/neovim-session-manager",
    url = "https://github.com/Shatur/neovim-session-manager"
  },
  ["nvim-cmp"] = {
    after = { "tabout.nvim" },
    loaded = true,
    only_config = true
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-cursorline"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-cursorline",
    url = "https://github.com/yamatsum/nvim-cursorline"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\ng\0\0\5\0\a\0\f6\0\0\0009\0\1\0009\0\2\0'\2\3\0006\3\0\0009\3\1\0039\3\4\3B\3\1\2'\4\5\0&\3\4\3'\4\6\0D\0\4\0\tfile\6/\vgetcwd\25Path to executable: \ninput\afn\bvim�\20\1\0\a\0S\0�\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\0\5\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\1\6\0005\2\b\0005\3\t\0=\3\n\0025\3\v\0=\3\f\2=\2\a\0019\1\r\0004\2\3\0005\3\15\0003\4\16\0=\4\17\0034\4\0\0=\4\18\3>\3\1\2=\2\14\0019\1\r\0009\2\r\0009\2\14\2=\2\19\0019\1\r\0009\2\r\0009\2\14\2=\2\20\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4\25\0'\5\26\0005\6\27\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4\28\0'\5\29\0005\6\30\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4\31\0'\5 \0005\6!\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4\"\0'\5#\0005\6$\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4%\0'\5&\0005\6'\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4(\0'\5)\0005\6*\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4+\0'\5 \0005\6,\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4-\0'\5#\0005\6.\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4/\0'\5&\0005\0060\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\0041\0'\5)\0005\0062\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\0043\0'\0054\0005\0065\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\0036\0'\0047\0'\0058\0005\0069\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4:\0'\5;\0005\6<\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4=\0'\5>\0005\6?\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4@\0'\5A\0005\6B\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4C\0'\5D\0005\6E\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4F\0'\5G\0005\6H\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4I\0'\5J\0005\6K\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4L\0'\5\29\0005\6M\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4N\0'\5O\0005\6P\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4Q\0'\5\26\0005\6R\0B\1\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\15<Leader>di\1\0\2\vsilent\2\fnoremap\0026<cmd>lua require('dap.ui.variables').scopes()<CR>\15<Leader>dc\1\0\2\vsilent\2\fnoremap\2\16<Leader>dbt\1\0\2\vsilent\2\fnoremap\2b<cmd>lua require('dap').set_breakpoint({ nil, nil, vim.fn.input('Log point message: ') })<CR>\16<Leader>dbm\1\0\2\vsilent\2\fnoremap\2W<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>\16<Leader>dbc\1\0\2\vsilent\2\fnoremap\0020<cmd>lua require('dap').repl.run_last()<CR>\16<Leader>drl\1\0\2\vsilent\2\fnoremap\2,<cmd>lua require('dap').repl.open()<CR>\16<Leader>dro\1\0\2\vsilent\2\fnoremap\2`<cmd>lua local widgets=require('dap.ui.widgets');widgets.centered_float(widgets.scopes)<CR>\16<Leader>duf\1\0\2\vsilent\2\fnoremap\0023<cmd>lua require('dap.ui.widgets').hover()<CR>\16<Leader>duh\1\0\2\vsilent\2\fnoremap\2<<cmd>lua require('dap.ui.variables').visual_hover()<CR>\16<Leader>dhv\6v\1\0\2\vsilent\2\fnoremap\0025<cmd>lua require('dap.ui.variables').hover()<CR>\16<Leader>dhh\1\0\2\vsilent\2\fnoremap\2\16<Leader>dso\1\0\2\vsilent\2\fnoremap\2\16<Leader>dsi\1\0\2\vsilent\2\fnoremap\2\16<Leader>dsv\1\0\2\vsilent\2\fnoremap\2\16<Leader>dsc\1\0\2\vsilent\2\fnoremap\2+<cmd>lua require('dap').step_out()<CR>\t<F3>\1\0\2\vsilent\2\fnoremap\2,<cmd>lua require('dap').step_into()<CR>\t<F2>\1\0\2\vsilent\2\fnoremap\2,<cmd>lua require('dap').step_over()<CR>\t<F1>\1\0\2\vsilent\2\fnoremap\2+<cmd>lua require('dap').continue()<CR>\t<F9>\1\0\2\vsilent\2\fnoremap\0024<cmd>lua require('dap').toggle_breakpoint()<CR>\t<F5>\1\0\2\vsilent\2\fnoremap\2+<cmd>lua require('dapui').toggle()<CR>\t<F4>\6n\20nvim_set_keymap\bapi\bvim\trust\6c\targs\fprogram\0\1\0\6\18runInTerminal\1\16stopOnEntry\1\frequest\vlaunch\tname\vLaunch\ttype\tlldb\bcwd\23${workspaceFolder}\bcpp\19configurations\benv\1\0\1#LLDB_LAUNCH_FLAG_LAUNCH_IN_TTY\bYES\vattach\1\0\2\14pidSelect\bask\16pidProperty\bpid\1\0\3\ttype\15executable\tname\tlldb\fcommand\16lldb-vscode\tlldb\radapters\nsetup\ndapui\bdap\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lastplace"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-lastplace\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-lastplace",
    url = "https://github.com/ethanholz/nvim-lastplace"
  },
  ["nvim-lightbulb"] = {
    config = { "\27LJ\2\ns\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Tautocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()\bcmd\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-lightbulb",
    url = "https://github.com/kosayoda/nvim-lightbulb"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\n�\2\0\1\r\1\b\0 5\1\0\0006\2\1\0\18\4\1\0B\2\2\4H\5\19�-\a\0\0009\a\2\a\18\t\6\0B\a\2\3\15\0\a\0X\t\r�\18\v\b\0009\t\3\bB\t\2\2\14\0\t\0X\t\b�6\t\4\0'\v\5\0\18\f\6\0&\v\f\vB\t\2\1\18\v\b\0009\t\6\bB\t\2\1F\5\3\3R\5�4\2\0\0\18\5\0\0009\3\a\0\18\6\2\0B\3\3\1K\0\1\0\0�\nsetup\finstall\16Installing \nprint\17is_installed\15get_server\npairs\1\b\0\0\vclangd\ncssls\14grammarly\tltex\fpyright\16sumneko_lua\14zeta_noteS\1\0\4\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\1\2\0003\3\3\0B\1\2\0012\0\0�K\0\1\0\0\20on_server_ready\23nvim-lsp-installer\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n�\b\0\0\6\0&\0a6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\16\0005\5\17\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\18\0'\4\19\0005\5\20\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\21\0'\4\22\0005\5\23\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\24\0'\4\25\0005\5\26\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\27\0'\4\5\0005\5\28\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\29\0'\4\30\0005\5\31\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3 \0'\4!\0005\5\"\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3#\0'\4$\0005\5%\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\0020<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\ag]\1\0\2\vsilent\2\fnoremap\0020<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\ag[\1\0\2\vsilent\2\fnoremap\2+<cmd>lua vim.lsp.buf.code_action()<CR>\aga\1\0\2\vsilent\2\fnoremap\2\agd\1\0\2\vsilent\2\fnoremap\0020<cmd>lua vim.lsp.buf.workspace_symbol()<CR>\agW\1\0\2\vsilent\2\fnoremap\2/<cmd>lua vim.lsp.buf.document_symbol()<CR>\ag0\1\0\2\vsilent\2\fnoremap\2*<cmd>lua vim.lsp.buf.references()<CR>\agr\1\0\2\vsilent\2\fnoremap\2/<cmd>lua vim.lsp.buf.type_definition()<CR>\1\0\2\vsilent\2\fnoremap\2.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<c-k>\1\0\2\vsilent\2\fnoremap\2.<cmd>lua vim.lsp.buf.implementation()<CR>\agD\1\0\2\vsilent\2\fnoremap\2%<cmd>lua vim.lsp.buf.hover()<CR>\6K\1\0\2\vsilent\2\fnoremap\2*<cmd>lua vim.lsp.buf.definition()<CR>\n<c-j>\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-markdown-preview"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-markdown-preview",
    url = "https://github.com/davidgranstrom/nvim-markdown-preview"
  },
  ["nvim-neoclip.lua"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\f\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0'\2\1\0B\0\2\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0'\4\n\0005\5\v\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\31<cmd>Telescope neoclip<cr>\14<leader>c\6n\20nvim_set_keymap\bapi\bvim\19load_extension\14telescope\nsetup\fneoclip\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-tetris"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-tetris",
    url = "https://github.com/alec-gibson/nvim-tetris"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nv\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\frainbow\1\0\0\1\0\2\venable\2\18extended_mode\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23treesitter-context\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/romgrk/nvim-treesitter-context"
  },
  ["nvim-ts-rainbow"] = {
    config = { "\27LJ\2\nv\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\frainbow\1\0\0\1\0\2\venable\2\18extended_mode\2\nsetup\28nvim-treesitter.configs\frequire\0" },
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
    config = { "\27LJ\2\n�\2\0\0\t\0\15\1\"6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\4\0006\3\3\0009\3\4\0039\3\5\3'\5\6\0'\6\a\0'\a\b\0005\b\t\0B\3\5\2>\3\1\0026\3\3\0009\3\4\0039\3\5\3'\5\n\0'\6\v\0'\a\b\0005\b\f\0B\3\5\2>\3\2\0026\3\3\0009\3\4\0039\3\5\3'\5\r\0'\6\v\0'\a\b\0005\b\14\0B\3\5\0?\3\0\0B\0\2\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\6v\1\0\2\vsilent\2\fnoremap\2\15<Leader>rn\6n\1\0\2\vsilent\2\fnoremap\2-<cmd>lua require(\"renamer\").rename()<CR>\t<F2>\6i\20nvim_set_keymap\bapi\bvim\nsetup\frenamer\frequire\a����\4\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/renamer.nvim",
    url = "https://github.com/filipdutescu/renamer.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\b\0\28\0'6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\n\0'\2\v\0B\0\2\0029\0\f\0004\2\3\0005\3\18\0005\4\r\0005\5\14\0=\5\15\0045\5\16\0=\5\17\4=\4\19\0035\4\25\0005\5\23\0005\6\21\0005\a\20\0=\a\22\6=\6\24\5=\5\26\4=\4\27\3>\3\1\2B\0\2\1K\0\1\0\vserver\rsettings\1\0\0\18rust-analyzer\1\0\0\16checkOnSave\1\0\0\1\0\1\fcommand\vclippy\ntools\1\0\0\16inlay_hints\1\0\3\23other_hints_prefix\5\27parameter_hints_prefix\5\25show_parameter_hints\1\14runnables\1\0\1\18use_telescope\2\1\0\2\23hover_with_actions\2\17autoSetHints\2\nsetup\15rust-tools\frequire\1\0\1\fnoremap\2\27<cmd>RustRunnables<cr>\16<leader>rrr\1\0\1\fnoremap\2\21<cmd>RustRun<cr>\15<leader>rr\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["spellsitter.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16spellsitter\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/spellsitter.nvim",
    url = "https://github.com/lewis6991/spellsitter.nvim"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\n\0\r6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\28<cmd>SymbolsOutline<cr>\15<leader>so\6n\20nvim_set_keymap\bapi\1\0\1\nwidth\0032\20symbols_outline\6g\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\5\0\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\a\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\3=\3\n\0024\3\0\0=\3\v\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\topen\6{\nclose\6}\1\0\2\topen\6[\nclose\6]\1\0\2\topen\6(\nclose\6)\1\0\2\topen\6`\nclose\6`\1\0\2\topen\6\"\nclose\6\"\1\0\2\topen\6'\nclose\6'\1\0\a\15completion\2\15act_as_tab\2\21backwards_tabkey\f<S-Tab>\21act_as_shift_tab\1\21ignore_beginning\2\vtabkey\n<Tab>\21enable_backwards\2\nsetup\vtabout\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim",
    wants = { "nvim-treesitter" }
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim",
    url = "https://github.com/nvim-telescope/telescope-dap.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\6\0\19\0)6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\16\0'\4\17\0005\5\18\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2!<cmd>Telescope help_tags<cr>\15<leader>fh\1\0\2\vsilent\2\fnoremap\2\31<cmd>Telescope buffers<cr>\15<leader>fb\1\0\2\vsilent\2\fnoremap\2!<cmd>Telescope live_grep<cr>\15<leader>fg\1\0\2\vsilent\2\fnoremap\2.<cmd>Telescope find_files hidden=true<cr>\16<leader>ffh\1\0\2\vsilent\2\fnoremap\2\"<cmd>Telescope find_files<cr>\15<leader>ff\6n\20nvim_set_keymap\bapi\bvim\0" },
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
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\6\0\16\0\0306\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0005\5\15\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\27<cmd>TodoTelescope<cr>\15<leader>ft\1\0\2\vsilent\2\fnoremap\2\25<cmd>TodoTrouble<cr>\15<leader>tt\1\0\2\vsilent\2\fnoremap\2\26<cmd>TodoQuickFix<cr>\15<leader>tq\6n\20nvim_set_keymap\bapi\bvim\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\n\0\0146\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\1\0\2\vsilent\2\fnoremap\2\27<cmd>TroubleToggle<cr>\14<leader>t\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
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
  ["vim-fish"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-fish",
    url = "https://github.com/dag/vim-fish"
  },
  ["vim-highlightedyank"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-highlightedyank",
    url = "https://github.com/machakann/vim-highlightedyank"
  },
  ["vim-matchup"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\fmatchup\1\0\0\fdisable\1\3\0\0\6c\truby\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-nerdtree-syntax-highlight"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-nerdtree-syntax-highlight",
    url = "https://github.com/tiagofumo/vim-nerdtree-syntax-highlight"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-rooter",
    url = "https://github.com/airblade/vim-rooter"
  },
  ["vim-signature"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-signature",
    url = "https://github.com/kshenoy/vim-signature"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  },
  ["vim-ultest"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-ultest",
    url = "https://github.com/rcarriga/vim-ultest"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nb\0\0\3\0\6\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0\23set timeoutlen=500\bcmd\bvim\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\n\0\0186\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0009\0\3\0\18\2\0\0009\0\4\0'\3\5\0B\0\3\0016\0\6\0'\2\a\0B\0\2\0029\0\b\0005\2\t\0B\0\2\1K\0\1\0\1\0\2\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\feol:↴\vappend\14listchars\tlist\bopt\bvim\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-neoclip.lua
time([[Config for nvim-neoclip.lua]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\f\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0'\2\1\0B\0\2\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0'\4\n\0005\5\v\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\31<cmd>Telescope neoclip<cr>\14<leader>c\6n\20nvim_set_keymap\bapi\bvim\19load_extension\14telescope\nsetup\fneoclip\frequire\0", "config", "nvim-neoclip.lua")
time([[Config for nvim-neoclip.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\6\0\19\0)6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\16\0'\4\17\0005\5\18\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2!<cmd>Telescope help_tags<cr>\15<leader>fh\1\0\2\vsilent\2\fnoremap\2\31<cmd>Telescope buffers<cr>\15<leader>fb\1\0\2\vsilent\2\fnoremap\2!<cmd>Telescope live_grep<cr>\15<leader>fg\1\0\2\vsilent\2\fnoremap\2.<cmd>Telescope find_files hidden=true<cr>\16<leader>ffh\1\0\2\vsilent\2\fnoremap\2\"<cmd>Telescope find_files<cr>\15<leader>ff\6n\20nvim_set_keymap\bapi\bvim\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lightbulb
time([[Config for nvim-lightbulb]], true)
try_loadstring("\27LJ\2\ns\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Tautocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()\bcmd\bvim\0", "config", "nvim-lightbulb")
time([[Config for nvim-lightbulb]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nb\0\0\3\0\6\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0\23set timeoutlen=500\bcmd\bvim\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\ng\0\0\5\0\a\0\f6\0\0\0009\0\1\0009\0\2\0'\2\3\0006\3\0\0009\3\1\0039\3\4\3B\3\1\2'\4\5\0&\3\4\3'\4\6\0D\0\4\0\tfile\6/\vgetcwd\25Path to executable: \ninput\afn\bvim�\20\1\0\a\0S\0�\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\0\5\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\1\6\0005\2\b\0005\3\t\0=\3\n\0025\3\v\0=\3\f\2=\2\a\0019\1\r\0004\2\3\0005\3\15\0003\4\16\0=\4\17\0034\4\0\0=\4\18\3>\3\1\2=\2\14\0019\1\r\0009\2\r\0009\2\14\2=\2\19\0019\1\r\0009\2\r\0009\2\14\2=\2\20\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4\25\0'\5\26\0005\6\27\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4\28\0'\5\29\0005\6\30\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4\31\0'\5 \0005\6!\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4\"\0'\5#\0005\6$\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4%\0'\5&\0005\6'\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4(\0'\5)\0005\6*\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4+\0'\5 \0005\6,\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4-\0'\5#\0005\6.\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4/\0'\5&\0005\0060\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\0041\0'\5)\0005\0062\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\0043\0'\0054\0005\0065\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\0036\0'\0047\0'\0058\0005\0069\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4:\0'\5;\0005\6<\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4=\0'\5>\0005\6?\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4@\0'\5A\0005\6B\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4C\0'\5D\0005\6E\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4F\0'\5G\0005\6H\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4I\0'\5J\0005\6K\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4L\0'\5\29\0005\6M\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4N\0'\5O\0005\6P\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4Q\0'\5\26\0005\6R\0B\1\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\15<Leader>di\1\0\2\vsilent\2\fnoremap\0026<cmd>lua require('dap.ui.variables').scopes()<CR>\15<Leader>dc\1\0\2\vsilent\2\fnoremap\2\16<Leader>dbt\1\0\2\vsilent\2\fnoremap\2b<cmd>lua require('dap').set_breakpoint({ nil, nil, vim.fn.input('Log point message: ') })<CR>\16<Leader>dbm\1\0\2\vsilent\2\fnoremap\2W<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>\16<Leader>dbc\1\0\2\vsilent\2\fnoremap\0020<cmd>lua require('dap').repl.run_last()<CR>\16<Leader>drl\1\0\2\vsilent\2\fnoremap\2,<cmd>lua require('dap').repl.open()<CR>\16<Leader>dro\1\0\2\vsilent\2\fnoremap\2`<cmd>lua local widgets=require('dap.ui.widgets');widgets.centered_float(widgets.scopes)<CR>\16<Leader>duf\1\0\2\vsilent\2\fnoremap\0023<cmd>lua require('dap.ui.widgets').hover()<CR>\16<Leader>duh\1\0\2\vsilent\2\fnoremap\2<<cmd>lua require('dap.ui.variables').visual_hover()<CR>\16<Leader>dhv\6v\1\0\2\vsilent\2\fnoremap\0025<cmd>lua require('dap.ui.variables').hover()<CR>\16<Leader>dhh\1\0\2\vsilent\2\fnoremap\2\16<Leader>dso\1\0\2\vsilent\2\fnoremap\2\16<Leader>dsi\1\0\2\vsilent\2\fnoremap\2\16<Leader>dsv\1\0\2\vsilent\2\fnoremap\2\16<Leader>dsc\1\0\2\vsilent\2\fnoremap\2+<cmd>lua require('dap').step_out()<CR>\t<F3>\1\0\2\vsilent\2\fnoremap\2,<cmd>lua require('dap').step_into()<CR>\t<F2>\1\0\2\vsilent\2\fnoremap\2,<cmd>lua require('dap').step_over()<CR>\t<F1>\1\0\2\vsilent\2\fnoremap\2+<cmd>lua require('dap').continue()<CR>\t<F9>\1\0\2\vsilent\2\fnoremap\0024<cmd>lua require('dap').toggle_breakpoint()<CR>\t<F5>\1\0\2\vsilent\2\fnoremap\2+<cmd>lua require('dapui').toggle()<CR>\t<F4>\6n\20nvim_set_keymap\bapi\bvim\trust\6c\targs\fprogram\0\1\0\6\18runInTerminal\1\16stopOnEntry\1\frequest\vlaunch\tname\vLaunch\ttype\tlldb\bcwd\23${workspaceFolder}\bcpp\19configurations\benv\1\0\1#LLDB_LAUNCH_FLAG_LAUNCH_IN_TTY\bYES\vattach\1\0\2\14pidSelect\bask\16pidProperty\bpid\1\0\3\ttype\15executable\tname\tlldb\fcommand\16lldb-vscode\tlldb\radapters\nsetup\ndapui\bdap\19load_extension\14telescope\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\6\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2!<cmd>BufferLineCyclePrev<CR>\14<leader>[\1\0\2\vsilent\2\fnoremap\2!<cmd>BufferLineCycleNext<CR>\14<leader>]\6n\20nvim_set_keymap\bapi\bvim\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\n�\2\0\1\r\1\b\0 5\1\0\0006\2\1\0\18\4\1\0B\2\2\4H\5\19�-\a\0\0009\a\2\a\18\t\6\0B\a\2\3\15\0\a\0X\t\r�\18\v\b\0009\t\3\bB\t\2\2\14\0\t\0X\t\b�6\t\4\0'\v\5\0\18\f\6\0&\v\f\vB\t\2\1\18\v\b\0009\t\6\bB\t\2\1F\5\3\3R\5�4\2\0\0\18\5\0\0009\3\a\0\18\6\2\0B\3\3\1K\0\1\0\0�\nsetup\finstall\16Installing \nprint\17is_installed\15get_server\npairs\1\b\0\0\vclangd\ncssls\14grammarly\tltex\fpyright\16sumneko_lua\14zeta_noteS\1\0\4\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\1\2\0003\3\3\0B\1\2\0012\0\0�K\0\1\0\0\20on_server_ready\23nvim-lsp-installer\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\6\0\16\0\0306\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0005\5\15\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\27<cmd>TodoTelescope<cr>\15<leader>ft\1\0\2\vsilent\2\fnoremap\2\25<cmd>TodoTrouble<cr>\15<leader>tt\1\0\2\vsilent\2\fnoremap\2\26<cmd>TodoQuickFix<cr>\15<leader>tq\6n\20nvim_set_keymap\bapi\bvim\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: renamer.nvim
time([[Config for renamer.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\t\0\15\1\"6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\4\0006\3\3\0009\3\4\0039\3\5\3'\5\6\0'\6\a\0'\a\b\0005\b\t\0B\3\5\2>\3\1\0026\3\3\0009\3\4\0039\3\5\3'\5\n\0'\6\v\0'\a\b\0005\b\f\0B\3\5\2>\3\2\0026\3\3\0009\3\4\0039\3\5\3'\5\r\0'\6\v\0'\a\b\0005\b\14\0B\3\5\0?\3\0\0B\0\2\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\6v\1\0\2\vsilent\2\fnoremap\2\15<Leader>rn\6n\1\0\2\vsilent\2\fnoremap\2-<cmd>lua require(\"renamer\").rename()<CR>\t<F2>\6i\20nvim_set_keymap\bapi\bvim\nsetup\frenamer\frequire\a����\4\0", "config", "renamer.nvim")
time([[Config for renamer.nvim]], false)
-- Config for: nvim-lastplace
time([[Config for nvim-lastplace]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-lastplace\frequire\0", "config", "nvim-lastplace")
time([[Config for nvim-lastplace]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\n\0\0146\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\1\0\2\vsilent\2\fnoremap\2\27<cmd>TroubleToggle<cr>\14<leader>t\6n\20nvim_set_keymap\bapi\bvim\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-ts-rainbow
time([[Config for nvim-ts-rainbow]], true)
try_loadstring("\27LJ\2\nv\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\frainbow\1\0\0\1\0\2\venable\2\18extended_mode\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-ts-rainbow")
time([[Config for nvim-ts-rainbow]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\b\0\f5\0\0\0005\1\6\0'\2\1\0006\3\2\0009\3\3\3'\5\4\0B\3\2\2'\4\5\0&\2\4\2>\2\1\1=\1\a\0L\0\2\0\targs\1\3\0\0\0\6- /.config/stylua/stylua.toml\tHOME\vgetenv\aos\19--config-path \1\0\2\bexe\vstylua\nstdin\2S\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\18--emit=stdout\19--edition=2021\1\0\2\bexe\frustfmt\nstdin\2�\1\1\0\6\0\17\0\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0005\2\15\0005\3\v\0004\4\3\0003\5\n\0>\5\1\4=\4\f\0034\4\3\0003\5\r\0>\5\1\4=\4\14\3=\3\16\2B\0\2\1K\0\1\0\rfiletype\1\0\0\trust\0\blua\1\0\0\0\nsetup\14formatter\frequire\1\0\2\vsilent\2\fnoremap\2\20<cmd>Format<CR>\14<Leader>f\6n\20nvim_set_keymap\bapi\bvim\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: mini.nvim
time([[Config for mini.nvim]], true)
try_loadstring("\27LJ\2\n\\\0\0\3\0\4\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\17mini.starter\nsetup\18mini.surround\frequire\0", "config", "mini.nvim")
time([[Config for mini.nvim]], false)
-- Config for: spellsitter.nvim
time([[Config for spellsitter.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16spellsitter\frequire\0", "config", "spellsitter.nvim")
time([[Config for spellsitter.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nv\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\frainbow\1\0\0\1\0\2\venable\2\18extended_mode\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\n\0\r6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\28<cmd>SymbolsOutline<cr>\15<leader>so\6n\20nvim_set_keymap\bapi\1\0\1\nwidth\0032\20symbols_outline\6g\bvim\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
-- Config for: chadtree
time([[Config for chadtree]], true)
try_loadstring("\27LJ\2\nu\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\22<cmd>CHADopen<CR>\14<Leader>v\6n\20nvim_set_keymap\bapi\bvim\0", "config", "chadtree")
time([[Config for chadtree]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n�\4\0\0\6\0\23\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\v\0'\4\f\0005\5\r\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\17\0'\4\18\0005\5\19\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\20\0'\4\21\0005\5\22\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\21<cmd>HopLine<cr>\15<leader>jl\1\0\2\vsilent\2\fnoremap\2\22<cmd>HopChar1<cr>\14<leader>j\1\0\2\vsilent\2\fnoremap\2\22<cmd>HopChar2<cr>\15<leader>j2\1\0\2\vsilent\2\fnoremap\2\24<cmd>HopPattern<cr>\15<leader>jp\1\0\2\vsilent\2\fnoremap\2\21<cmd>HopWord<cr>\15<leader>jw\6n\20nvim_set_keymap\bapi\bvim\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n�\b\0\0\6\0&\0a6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\16\0005\5\17\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\18\0'\4\19\0005\5\20\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\21\0'\4\22\0005\5\23\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\24\0'\4\25\0005\5\26\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\27\0'\4\5\0005\5\28\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\29\0'\4\30\0005\5\31\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3 \0'\4!\0005\5\"\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3#\0'\4$\0005\5%\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\0020<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\ag]\1\0\2\vsilent\2\fnoremap\0020<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\ag[\1\0\2\vsilent\2\fnoremap\2+<cmd>lua vim.lsp.buf.code_action()<CR>\aga\1\0\2\vsilent\2\fnoremap\2\agd\1\0\2\vsilent\2\fnoremap\0020<cmd>lua vim.lsp.buf.workspace_symbol()<CR>\agW\1\0\2\vsilent\2\fnoremap\2/<cmd>lua vim.lsp.buf.document_symbol()<CR>\ag0\1\0\2\vsilent\2\fnoremap\2*<cmd>lua vim.lsp.buf.references()<CR>\agr\1\0\2\vsilent\2\fnoremap\2/<cmd>lua vim.lsp.buf.type_definition()<CR>\1\0\2\vsilent\2\fnoremap\2.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<c-k>\1\0\2\vsilent\2\fnoremap\2.<cmd>lua vim.lsp.buf.implementation()<CR>\agD\1\0\2\vsilent\2\fnoremap\2%<cmd>lua vim.lsp.buf.hover()<CR>\6K\1\0\2\vsilent\2\fnoremap\2*<cmd>lua vim.lsp.buf.definition()<CR>\n<c-j>\6n\20nvim_set_keymap\bapi\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: FTerm.nvim
time([[Config for FTerm.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\n\0\0176\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0'\3\4\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\0025<C-\\><C-n><CMD>lua require(\"FTerm\").toggle()<CR>\6t\1\0\2\vsilent\2\fnoremap\2+<CMD>lua require(\"FTerm\").toggle()<CR>\n<A-i>\6n\20nvim_set_keymap\bapi\bvim\0", "config", "FTerm.nvim")
time([[Config for FTerm.nvim]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire�\4\1\0\t\0%\0G6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\n\0009\5\b\0009\5\t\5B\5\1\2=\5\v\0049\5\b\0009\5\f\5B\5\1\2=\5\r\0049\5\b\0009\5\t\5B\5\1\2=\5\14\0049\5\b\0009\5\f\5B\5\1\2=\5\15\0049\5\b\0009\5\16\5)\a��B\5\2\2=\5\17\0049\5\b\0009\5\16\5)\a\4\0B\5\2\2=\5\18\0049\5\b\0009\5\19\5B\5\1\2=\5\20\0049\5\b\0009\5\21\5B\5\1\2=\5\22\0049\5\b\0009\5\23\0055\a\26\0009\b\24\0009\b\25\b=\b\27\aB\5\2\2=\5\28\4=\4\b\0034\4\b\0005\5\29\0>\5\1\0045\5\30\0>\5\2\0045\5\31\0>\5\3\0045\5 \0>\5\4\0045\5!\0>\5\5\0045\5\"\0>\5\6\0045\5#\0>\5\a\4=\4$\3B\1\2\1K\0\1\0\fsources\1\0\1\tname\vcrates\1\0\1\tname\tcalc\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\t<CR>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<Tab>\f<S-Tab>\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: vim-matchup
time([[Config for vim-matchup]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\fmatchup\1\0\0\fdisable\1\3\0\0\6c\truby\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "vim-matchup")
time([[Config for vim-matchup]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd tabout.nvim ]]

-- Config for: tabout.nvim
try_loadstring("\27LJ\2\n�\2\0\0\5\0\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\a\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\3=\3\n\0024\3\0\0=\3\v\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\topen\6{\nclose\6}\1\0\2\topen\6[\nclose\6]\1\0\2\topen\6(\nclose\6)\1\0\2\topen\6`\nclose\6`\1\0\2\topen\6\"\nclose\6\"\1\0\2\topen\6'\nclose\6'\1\0\a\15completion\2\15act_as_tab\2\21backwards_tabkey\f<S-Tab>\21act_as_shift_tab\1\21ignore_beginning\2\vtabkey\n<Tab>\21enable_backwards\2\nsetup\vtabout\frequire\0", "config", "tabout.nvim")

time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType rust ++once lua require("packer.load")({'rust-tools.nvim'}, { ft = "rust" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead Cargo.toml ++once lua require("packer.load")({'crates.nvim'}, { event = "BufRead Cargo.toml" }, _G.packer_plugins)]]
vim.cmd [[au BufWritePre * ++once lua require("packer.load")({'tidy.nvim'}, { event = "BufWritePre *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
