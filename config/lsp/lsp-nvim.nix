{ lib, config, ... }:
{
  options = {
    lsp-nvim.enable = lib.mkEnableOption "Enable lsp-nvim module";
  };

  config = lib.mkIf config.lsp-nvim.enable {
    plugins = {
      lsp = {
        enable = true;
        capabilities = "offsetEncoding = 'utf-16'";
        servers = {
          lua_ls = { enable = true; };
          nil_ls = { enable = true; };
          pyright = { enable = true; };
          bashls = { enable = true; };
        };
        keymaps = {
          silent = true;

          lspBuf = {
            gd = {
              action = "definition";
              desc = "go to definition";
            };
            gr = {
              action = "references";
              desc = "go to references";
            };
            gD = {
              action = "declaration";
              desc = "go to declaration";
            };
            gI = {
              action = "implementation";
              desc = "go to implementation";
            };
            gT = {
              action = "type_definition";
              desc = "go to type definition";
            };
            K = {
              action = "hover";
              desc = "Hover";
            };
            "<leader>cw" = {
              action = "workspace_symbol";
              desc = "Workspace Symbol";
            };
            "<leader>cr" = {
              action = "rename";
              desc = "Rename";
            };
            "<leader>ca" = {
              action = "code_action";
              desc = "Code Action";
            };
            "<C-k>" = {
              action = "signature_help";
              desc = "Signature Help";
            };
          };
          diagnostic = {
            "<leader>cd" = {
              action = "open_float";
              desc = "Line Diagnostics";
            };
            "[d" = {
              action = "goto_next";
              desc = "Next Diagnostic";
            };
            "]d" = {
              action = "goto_prev";
              desc = "Previous Diagnostic";
            };
          };
          extra = [
            {
              action = "<cmd>LspStart<cr>";
              key = "<leader>ls";
            }
            {
              action = "<cmd>LspStop<cr>";
              key = "<leader>lx";
            }
            {
              action = "<cmd>LspRestart<cr>";
              key = "<leader>lr";
            }
            {
              action = "<cmd>LspInfo<cr>";
              key = "<leader>li";
            }
            {
              action = {
                __raw = "require('telescope.builtin').lsp_definitions";
              };
              key = "gd";
            }
          ];
        };
      };
    };
  };
}
