-- leader
vim.g.mapleader = " "

-- save, quit
vim.keymap.set("n", "<leader>w", ":w<cr>")
vim.keymap.set("n", "<leader>W", ":w!<cr>")
vim.keymap.set("n", "<leader>q", ":q<cr>")
vim.keymap.set("n", "<leader>Q", ":q!<cr>")
vim.keymap.set("n", "<leader>s", ":so<cr>")

-- python
vim.keymap.set("n", "<leader>k", ":w<CR>:!python3 %<CR>", {
    noremap = true,
    silent = true,
    desc =
    "Run current Python file"
})

-- go to
vim.keymap.set("n", "<leader>vc", "<cmd>e ~/.config/nvim/lua/<CR>");
vim.keymap.set("n", "<leader>vd", "<cmd>e ~/Documents/<CR>");
vim.keymap.set("n", "<leader>vh", "<cmd>e ~/<CR>");

-- lines manipulation
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- next/previous highlight
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- buffers
vim.keymap.set("n", "<leader>n", ":bn<cr>")

vim.keymap.set("n", "<leader>b", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")
vim.keymap.set("n", "<leader>ml", ":b#<cr>")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- center the screen after scrolling up/down with Ctrl-u/d
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- yanking
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- move 5 lines up/down with arrow keys
vim.keymap.set("n", "<Down>", "5j")
vim.keymap.set("n", "<Up>", "5k")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- format lines
vim.keymap.set({ "n", "v" }, "<leader>ff", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- resize panes
vim.keymap.set("n", "<leader><left>", ":vertical resize +20<cr>")
vim.keymap.set("n", "<leader><right>", ":vertical resize -20<cr>")
vim.keymap.set("n", "<leader><up>", ":resize +10<cr>")
vim.keymap.set("n", "<leader><down>", ":resize -10<cr>")

-- telescope
vim.keymap.set("n", "<space>fd", ":Telescope find_files<cr>")
vim.keymap.set("n", "<space>ft", ":Telescope git_files<cr>")
vim.keymap.set("n", "<space>fh", ":Telescope help_tags<cr>")
vim.keymap.set("n", "<space>fg", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<space>/", ":Telescope current_buffer_fuzzy_find<cr>")
vim.keymap.set("n", "<space>gw", ":Telescope grep_string<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")

-- oil
vim.keymap.set("n", "<leader>e", ":Oil<cr>")

-- markdown
vim.keymap.set("n", "<leader>mk", ":VimtexCompile<cr>")
vim.keymap.set("n", "<leader>mk1", ":MdMath enable<cr>")
vim.keymap.set("n", "<leader>mk2", ":MdMath disable<cr>")

-- View
vim.wo.number = true
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.textwidth = 80

vim.opt.linebreak = true

-- Options
vim.opt.swapfile = false
