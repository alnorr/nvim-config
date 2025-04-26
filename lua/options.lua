local map = vim.keymap.set

-- leader
vim.g.mapleader = " "

map("n", "<leader>zn", ":TZNarrow<CR>", {})
map("v", "<leader>zn", ":'<,'>TZNarrow<CR>", {})
map("n", "<leader>zf", ":TZFocus<CR>", {})
map("n", "<leader>zm", ":TZMinimalist<CR>", {})
map("n", "<leader>za", ":TZAtaraxis<CR>", {})

-- themes
map("n", "<leader>t1", ":colorscheme onedark<CR>")
map("n", "<leader>t2", ":colorscheme default<CR>")

-- save, quit
map("n", "<leader>w", ":w<cr>")
map("n", "<leader>W", ":w!<cr>")
map("n", "<leader>q", ":q<cr>")
map("n", "<leader>Q", ":q!<cr>")
map("n", "<leader>s", ":so<cr>")

-- python
map("n", "<leader>k", ":w<CR>:!python3 %<CR>", {
    noremap = true,
    silent = true,
    desc =
    "Run current Python file"
})

-- go to
map("n", "<leader>vc", "<cmd>e ~/.config/nvim/lua/<CR>");
map("n", "<leader>vd", "<cmd>e ~/Documents/<CR>");
map("n", "<leader>vh", "<cmd>e ~/<CR>");

-- lines manipulation
map("n", "J", "mzJ`z")
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- next/previous highlight
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- buffers
map("n", "<leader>n", ":bn<cr>")

map("n", "<leader>b", ":bp<cr>")
map("n", "<leader>x", ":bd<cr>")
map("n", "<leader>ml", ":b#<cr>")

-- greatest remap ever
map("x", "<leader>p", [["_dP]])

-- center the screen after scrolling up/down with Ctrl-u/d
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-d>", "<C-d>zz")

-- yanking
map({ "n", "v" }, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])
map({ "n", "v" }, "<leader>d", [["_d]])

-- move 5 lines up/down with arrow keys
map("n", "<Down>", "5j")
map("n", "<Up>", "5k")

map("n", "<C-k>", "<cmd>cnext<CR>zz")
map("n", "<C-j>", "<cmd>cprev<CR>zz")

-- format lines
map({ "n", "v" }, "<leader>ff", vim.lsp.buf.format)
map("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- resize panes
map("n", "<leader><left>", ":vertical resize +20<cr>")
map("n", "<leader><right>", ":vertical resize -20<cr>")
map("n", "<leader><up>", ":resize +10<cr>")
map("n", "<leader><down>", ":resize -10<cr>")

-- change between light and dark mode
map("n", "<leader>cd", ":set bg=dark<cr>")
map("n", "<leader>cl", ":set bg=light<cr>")

-- telescope
map("n", "<space>fd", ":Telescope find_files<cr>")
map("n", "<space>ft", ":Telescope git_files<cr>")
map("n", "<space>fh", ":Telescope help_tags<cr>")
map("n", "<space>fg", ":Telescope live_grep<cr>")
map("n", "<space>/", ":Telescope current_buffer_fuzzy_find<cr>")
map("n", "<space>gw", ":Telescope grep_string<cr>")
map("n", "<leader>fo", ":Telescope oldfiles<cr>")

-- oil
map("n", "<leader>e", ":Oil<cr>")

-- markdown
map("n", "<leader>mk", ":VimtexCompile<cr>")
map("n", "<leader>mk1", ":MdMath enable<cr>")
map("n", "<leader>mk2", ":MdMath disable<cr>")

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
