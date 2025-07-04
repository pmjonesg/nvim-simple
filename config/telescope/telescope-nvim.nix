{ lib, config, ... }:
{
  options = {
    telescope-nvim.enable = lib.mkEnableOption "Enable telescope-nvim module";
  };
  
  config = lib.mkIf config.telescope-nvim.enable {
    plugins.telescope = {
      enable = true;
      extensions = {
        fzf-native = {
          enable = true;
          settings = {
            fuzzy = true;
            override_generic_sorter = true;
            override_file_sorter = true;
            case_mode = "smart_case";
          };
        };
        ui-select = {
          enable = true;
          settings = {
            specific_opts = {
              codeactions = true;
            };
          };
        };
      };
      # If you'd prefer Telescope not to enter a normal-like mode when hitting escape (and instead exiting), you can map <Esc> to do so via:↲
      settings = {
        defaults = {
          mappings = {
            i = {
              "<esc>" = {
                __raw = ''
                  function(...)
                    return require("telescope.actions").close(...)
                  end'';
              };
            };
          };
        };
        pickers = {
          colorscheme = {
            enable_preview = true;
          };
          # find_files = {
          #   theme = "ivy";
          # };
        };
      };
      keymaps = {
        "<leader>ff" = {
          action = "find_files";
          options.desc = "project files";
        };
        "<leader>f/" = {
           action = "live_grep";
           options.desc = "grep (root dir)";
        };
      };
    };
  };
}
