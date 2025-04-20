return {
    {
        "stevearc/oil.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            CustomOilBar = function()
                local path = vim.fn.expand "%"
                path = path:gsub("oil://", "")

                return "  " .. vim.fn.fnamemodify(path, ":.")
            end

            require("oil").setup {
                columns = { "icon" },
                win_options = {
                    winbar = "%{v:lua.CustomOilBar()}",
                },
                view_options = {
                    show_hidden = true
                },
                skip_confirm_for_simple_edits = true,
                prompt_save_on_select_new_entry = true,
                delete_to_trash = true,
                watch_for_changes = true,
                keymaps = {
                    ["<leader>z"] = "actions.open_external",
                },
            }
        end,
    },
}
