{ lib, config, ... }:
{
  options = {
    dap.enable = lib.mkEnableOption "Enable dap plugins";
  };

  config = lib.mkIf config.treesitter-nvim.enable {
    plugins.dap = {
      enable = true;
    };
    plugins.dap-virtual-text = {
      enable = true;
    };
    plugins.dap-ui = {
      enable = true;
    };
    plugins.dap-go = {
      enable = true;
    };
    plugins.dap-python = {
      enable = true;
    };
  };
}
