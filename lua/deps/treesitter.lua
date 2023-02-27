--[[ treesitter.lua ]]

return {
    {
        "nvim-treesitter/nvim-treesitter",
        function()
            require( "nvim-treesitter.install" ).compilers = { "clang" },
            require( "nvim-treesitter.configs").setup {
                ensure_installed = {
                    "bash",
                    "c",
--                    "c_sharp",
--                    "clojure",
--                    "cmake",
--                    "commonlisp",
                    "cpp",
--                    "css",
--                    "cuda",
--                    "dart",
--                    "dockerfile",
--                    "dot",
--                    "elixir",
--                    "erlang",
--                    "fennel",
--                    "fish",
--                    "glsl",
--                    "go",
--                    "graphql",
--                    "hjson",
--                    "hlsl",
--                    "html",
--                    "http",
--                    "java",
--                    "javascript",
--                    "jsdoc",
--                    "json",
--                    "json5",
--                    "julia",
--                    "kotlin",
--                    "lalrpop",
--                    "latex",
--                    "llvm",
                    "lua",
--                    "make",
--                    "markdown",
--                    "nix",
--                    "ocaml",
--                    "pascal",
--                    "perl",
--                    "php",
--                    "prisma",
--                    "proto",
--                    "pug",
                    "python",
--                    "r",
--                    "regex",
--                    "ruby",
--                    "rust",
--                    "scala",
--                    "scheme",
--                    "scss",
--                    "svelte",
--                    "toml",
--                    "tsx",
--                    "typescript",
--                    "vala",
                    "vim",
--                    "vue",
--                    "wgsl",
--                    "yaml",
--                    "zig",
                },
                auto_install = true,
                highlight = {
                    enable = true,
                    disable = { "python", "lua", "bash" },
                    additional_vim_regex_highlighting = false,
                },
            }
        end,

        deps = {
            -- custom text objects (todo)
            "nvim-treesitter/nvim-treesitter-textobjects",

            -- tree-sitter debugging tool
            {
            "nvim-treesitter/playground",
            function()
                require("nvim-treesitter.configs").setup {
                    playground = {
                        enable = true,
                    },
                    query_linter = {
                        enable = true,
                    },
                }
            end,
            },

            -- commenting engine using tree-sitter
            {
                "JoosepAlviste/nvim-ts-context-commentstring",
                function()
                    require("nvim-treesitter.configs").setup {
                        context_commentstring = {
                            enable = true,
                            enable_autocmd = false,
                        },
                    }
                end,
            },
        }
    }
}
