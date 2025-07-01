{ lib, config, ... }:
{
  options = {
    tmux.enable = lib.mkEnableOption "Enable tmux plugin";
  };

  config = lib.mkIf config.tmux.enable {
    plugins.tmux-navigator = {
      enable = true;
    };
  };
}
