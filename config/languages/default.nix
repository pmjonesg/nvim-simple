{ lib, config, ...}:
{
  imports = [
    ./treesitter-nvim.nix
    ./dap.nix
    ./cmp-nvim.nix
    ./neotest.nix
  ];

  options = {
    languages.enable = lib.mkEnableOption "Enable languages module";
  };

  config = lib.mkIf config.languages.enable {
    treesitter-nvim.enable = lib.mkDefault true;
    dap.enable = lib.mkDefault true;
    cmp-nvim.enable = lib.mkDefault true;
    neotest.enable = lib.mkDefault true;
  };
}
