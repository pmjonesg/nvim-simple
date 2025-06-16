{ lib, config, ... }:
{
  imports = [
    ./avante.nix
  ];

  options = {
    ai.enable = lib.mkEnableOption "Enable ai plugins";
  };

  config = lib.mkIf config.ai.enable {
    avante.enable = lib.mkDefault true;
  };
}
