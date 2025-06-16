{ lib, config, ... }:
{
  options = {
    vimrc.enable = lib.mkEnableOption "Enable vimrc module";
  };

  config = lib.mkIf config.vimrc.enable {
    opts = {
      number = true;
      shiftwidth = 2;
      expandtab = true;
      smarttab = true;
    };
  };
}
