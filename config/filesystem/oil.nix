{ lib, config, ... }:
{
  options = {
    oil.enable = lib.mkEnableOption "Enable oil module";
  };

  config = lib.mkIf config.oil.enable {
    plugins.oil = {
      enable = true;
      settings = {
        columns = [
          "icon"
        ];
        float = {
          max_width = 0;
          preview_split = "auto";
          border = "rounded";
        };
        win_options = {
          concealcursor = "nvc";
          conceallevel = 3;
          cursorcolumn = false;
          foldcolumn = "0";
          list = false;
          signcolumn = "no";
          spell = false;
          wrap = false;
        };
        keymaps = {
          "q" = "actions.close";
        };
      };
    };
  };
}
