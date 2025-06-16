{ lib, config, ... }:
{
  options = {
    deps.enable = lib.mkEnableOption "Enable dependencies module";
  };

  config = lib.mkIf config.deps.enable {
    dependencies = {
      curl.enable = true;
      direnv.enable = true;
      git.enable = true;
      ripgrep.enable = true;
      tmux.enable = true;
      tree-sitter.enable = true;
      yq.enable = true;
    };
  };
}
