{ lib, ... }:
{
  imports = [
    ./ai
    ./lsp
    ./languages
    ./telescope
    ./completion
    ./keys.nix
    ./colorschemes
    ./dependencies
    ./filesystem
    ./cosmetics
    ./clipboard.nix
    ./vimrc
    ./envs
    ./misc
    ./ui
    ./integrations
  ];

  ai.enable = lib.mkDefault true;
  lsp.enable = lib.mkDefault true;
  languages.enable = lib.mkDefault true;
  telescope.enable = lib.mkDefault true;
  completion.enable = lib.mkDefault true;
  keys.enable = true;
  colorschemes.enable = true;
  deps.enable = lib.mkDefault true;
  filesystem.enable = lib.mkDefault true;
  cosmetics.enable = lib.mkDefault true;
  clipboard.enable = true;
  vimrc.enable = true;
  envs.enable = true;
  misc.enable = true;
  ui.enable = true;
  integrations.enable = true;
}
