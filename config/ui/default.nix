{ lib, config, ... }:
{
  imports = [
    ./notify.nix
  ];

  options = {
    ui.enable = lib.mkEnableOption "Enable ui plugins";
  };

  config = lib.mkIf config.ui.enable {
    notify.enable = lib.mkDefault true;
  };
}
