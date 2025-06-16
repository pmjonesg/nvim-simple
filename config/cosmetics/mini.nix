{ lib, config, ...}:
{
  options = {
    mini.enable = lib.mkEnableOption "Enable mini module";
  };

  config = lib.mkIf config.mini.enable {
    plugins.mini = {
      enable = true;
      mockDevIcons = true;
      modules = {
        icons = {};
        surround = {
          mappings = {
            add = "gsa";
            delete = "gsd";
            find = "gsf";
            find_left = "gsF";
            highlight = "gsh";
            replace = "gsr";
            update_n_lines = "gsn";
          };
        };
      };
    };
  };
}
