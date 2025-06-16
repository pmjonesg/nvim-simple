{ lib, config, ...}:
{
  imports = [
    ./mini.nix
  ];

  options = {
    cosmetics.enable = lib.mkEnableOption "Enable cosmetics module";
  };

  config = lib.mkIf config.cosmetics.enable {
    mini.enable = lib.mkDefault true;
  };
}
