{ lib, config, ... }:
{
  imports = [
    ./oil.nix
    ./lazygit.nix
  ];

  options = {
    filesystem.enable = lib.mkEnableOption "Enable filesystem module";
  };

  config = lib.mkIf config.filesystem.enable {
    oil.enable = lib.mkDefault true;
    lazygit.enable = lib.mkDefault true;
  };
}
