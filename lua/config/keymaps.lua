-- ~/.config/nvim/lua/config/keymaps.lua

local map = function(mode, lhs, rhs, desc)
  vim.keymap.set(mode, lhs, rhs, { desc = desc, silent = true })
end

-- 3) Quality-of-life
map("n", "<leader>w", "<cmd>w<CR>", "Write")
map("n", "<leader>q", "<cmd>q<CR>", "Quit")
map("n", "<leader>h", "<cmd>nohlsearch<CR>", "Clear search")

-- Split navigation (works well in tmux too if you like)
map("n", "<C-h>", "<C-w>h", "Move to left split")
map("n", "<C-j>", "<C-w>j", "Move to below split")
map("n", "<C-k>", "<C-w>k", "Move to above split")
map("n", "<C-l>", "<C-w>l", "Move to right split")

-- Resize splits
map("n", "<A-Left>",  "<cmd>vertical resize -3<CR>", "Narrow")
map("n", "<A-Right>", "<cmd>vertical resize +3<CR>", "Widen")
map("n", "<A-Up>",    "<cmd>resize +2<CR>", "Taller")
map("n", "<A-Down>",  "<cmd>resize -2<CR>", "Shorter")

-- 4) Telescope (lazy-safe: require inside the mapping)
map("n", "<leader>ff", function() require("telescope.builtin").find_files() end, "[F]ind [F]iles")
map("n", "<leader>fg", function() require("telescope.builtin").live_grep()  end, "[F]ind [G]rep")
map("n", "<leader>fb", function() require("telescope.builtin").buffers()    end, "[F]ind [B]uffers")
map("n", "<leader>fh", function() require("telescope.builtin").help_tags()  end, "[F]ind [H]elp")

-- Optional extras
map("n", "<leader>fs", function() require("telescope.builtin").git_status() end, "[F]ind Git [S]tatus")
map("n", "<leader>fc", function() require("telescope.builtin").git_commits() end, "[F]ind Git [C]ommits")
map("n", "<leader>fk", function() require("telescope.builtin").keymaps() end, "[F]ind [K]eymaps")
map("n", "<leader>fd", function() require("telescope.builtin").diagnostics() end, "[F]ind [D]iagnostics")

-- Copy inside Neovim (default register)
vim.keymap.set({"n","v"}, "<leader>y", function()
  -- copy visually selected text into system clipboard using xclip
  vim.cmd('silent! normal! "+y') -- yank into + register
  local text = vim.fn.getreg('+') -- grab from +
  vim.fn.system("xclip -selection clipboard", text)
end, { desc = "Yank to system clipboard via xclip" })

vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end,
  { desc = "Format buffer with LSP/none-ls" })

