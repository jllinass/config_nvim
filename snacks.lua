return {
    "folke/snacks.nvim",
        priority = 1000,
        lazy = false,

    keys = {
        { "<leader>lg", function() require("snacks").lazygit() end, desc = "Lazygit" },
        { "<leader>gl", function() require("snacks").lazygit.log() end, desc = "Lazygit Logs" },
        { "<leader>rN", function() require("snacks").rename.rename_file() end, desc = "Fast Rename Current File" },
        { "<leader>dB", function() require("snacks").bufdelete() end, desc = "Delete or Close Buffer  (Confirm)" },

        -- Snacks Picker
        { "<leader>pf", function() require("snacks").picker.files() end, desc = "Find Files (Snacks Picker)" },
        {"<leader>pc", function() require("snacks").picker.files({ cwd = "~/AppData/Local/nvim/lua" }) end, desc = "Find Config File" },
        {"<leader>ps", function() require("snacks").picker.grep() end, desc = "Grep word" },
        { "<leader>pws", function() require("snacks").picker.grep_word() end, desc = "Search Visual selection or Word", mode = { "n", "x" } },
        { "<leader>pk", function() require("snacks").picker.keymaps({ layout = "ivy" }) end, desc = "Search Keymaps (Snacks Picker)" },

        -- Git Stuff
        { "<leader>gbr", function() require("snacks").picker.git_branches({ layout = "select" }) end, desc = "Pick and Switch Git Branches" },

        -- Other Utils
        { "<ledader>th" , function() require("snacks").picker.colorschemes({ layout = "ivy" }) end, desc = "Pick Color Schemes"},
        { "<leader>vh", function()require("rsnacks").picker.help() end, desc = "Help Pages" },
    },
    {
        "folke/todo-comments.nvim",
        event = { "BufReadPre", "BufNewFile" },
        optional = true,
        keys = {
            { "<leader>pt", function() require("snacks").picker.todo_comments() end, desc = "All" },
            { "<leader>pT", function() require("snacks").picker.todo_comments({ keywords = { "TODO","FORGETNOT","FIXME" } }) end, desc = "mains" },
        },
    }
}
