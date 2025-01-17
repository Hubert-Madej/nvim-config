return {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = { "markdown" },  -- Load for Markdown files only
    cmd = { "MarkdownPreview", "MarkdownPreviewToggle", "MarkdownPreviewStop" },  -- Lazy load on these commands
    init = function()
        -- Auto start preview when opening a markdown file
        vim.g.mkdp_auto_start = 1

        -- Do not auto-close preview when switching buffers
        vim.g.mkdp_auto_close = 0

        -- Refresh preview only when saving or leaving insert mode
        vim.g.mkdp_refresh_slow = 1

        -- Enable preview command globally for all filetypes
        vim.g.mkdp_command_for_global = 0

        -- Open the preview to localhost only
        vim.g.mkdp_open_to_the_world = 0

        -- Set the browser explicitly (macOS uses "open", or set your browser)
        vim.g.mkdp_browser = "open"

        -- Echo the preview URL when starting preview
        vim.g.mkdp_echo_preview_url = 1

        -- Preview options for better rendering
        vim.g.mkdp_preview_options = {
            mkit = {},
            katex = {},
            uml = {},
            maid = {},
            disable_sync_scroll = 0,
            sync_scroll_type = 'middle',
            hide_yaml_meta = 1,
            sequence_diagrams = {},
            flowchart_diagrams = {},
            content_editable = false,
            disable_filename = 0,
            toc = {}
        }

        -- Set the theme to dark
        vim.g.mkdp_theme = 'dark'

        -- Recognize markdown filetypes
        vim.g.mkdp_filetypes = { "markdown" }

        -- Reuse preview window
        vim.g.mkdp_combine_preview = 1
        vim.g.mkdp_combine_preview_auto_refresh = 1
    end,
}

