{ lib, config, ... }:
{
  imports = [
    ./tmux.nix
  ];

  options = {
    integrations.enable = lib.mkEnableOption "Enable integration plugins";
  };

  config = lib.mkIf config.integrations.enable {
    tmux.enable = lib.mkDefault true;
  };
}
