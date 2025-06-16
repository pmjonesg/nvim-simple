{ lib, config, ... }:
{
  imports = [
    ./lsp-nvim.nix
    ./conform.nix
    ./linter.nix
  ];

  options = {
    lsp.enable = lib.mkEnableOption "Enable lsp module";
  };

  config = lib.mkIf config.lsp.enable {
    lsp-nvim.enable = lib.mkDefault true;
    conform.enable = lib.mkDefault true;
    linter.enable = lib.mkDefault true;
  };
}
