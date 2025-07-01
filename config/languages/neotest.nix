{ lib, config, ... }:
{
  options = {
    neotest.enable = lib.mkEnableOption "Enable neotest plugin";
  };

  config = lib.mkIf config.neotest.enable {
    plugins.neotest = {
      enable = true;
      adapters = {
        python = { enable = true; };
      };
      settings = {
        output = {
          enabled = true;
          open_on_run = true;
        };
        output_panel = {
          enabled = true;
          open = "botright split | resize 15";
        };
        quickfix = {
          enabled = false;
        };
      };
    };
  };
}
