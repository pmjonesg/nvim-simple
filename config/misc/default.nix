{ lib, config, ... }:
{
  imports = [
    ./hardtime.nix
  ];

  options = {
    misc.enable = lib.mkEnableOption "Enable misc plugins";
  };

  config = lib.mkIf config.misc.enable {
    hardtime.enable = lib.mkDefault false;
  };
}
