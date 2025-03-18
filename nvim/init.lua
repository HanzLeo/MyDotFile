-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("fany.fanykeymaps")
require("fany.fanyconfig")
if not vim.g.vscode then
  require("fany.fanytelescope")
  require("fany.fanyformat")
  require("fany.utils.fanyutils").set_os_info()
  require("fany.fanysnippets")
  require("fany.fanyneotree")
  require("fany.fanytoggleterm")
end
-- 1. 定义全局变量保存 Vault 路径
vim.g.obsidian_vault = "/Users/h/Library/Mobile Documents/iCloud~md~obsidian/Documents/Poem_Wine/"

-- 2. 绑定快捷键（例如 <Leader>ov）
vim.keymap.set('n', '<Leader>ov', function()
    vim.cmd("cd " .. vim.g.obsidian_vault)  -- 切换到 Vault 目录
    vim.cmd("e .")                          -- 打开文件浏览器（Netrw）
end, { desc = "Open Obsidian Vault" })      -- 可选：添加描述
