{ lib, config, ... }:
{
  imports = [
    ./direnv.nix
  ];

  options = {
    envs.enable = lib.mkEnableOption "Enable env module";
  };

  config = lib.mkIf config.envs.enable {
    direnv.enable = lib.mkDefault true;
  };
}
