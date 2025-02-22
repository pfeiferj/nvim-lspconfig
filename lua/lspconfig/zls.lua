local configs = require 'lspconfig/configs'
local util = require 'lspconfig/util'

configs.zls = {
  default_config = {
    cmd = { 'zls' },
    filetypes = { 'zig', 'zir' },
    root_dir = util.root_pattern('zls.json', '.git'),
    single_file_support = true,
  },
  docs = {
    description = [[
           https://github.com/zigtools/zls

           `Zig LSP implementation + Zig Language Server`.
        ]],
    default_config = {
      root_dir = [[util.root_pattern("zls.json", ".git") or current_file_dirname]],
    },
  },
}
