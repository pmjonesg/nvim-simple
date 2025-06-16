{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    futils.url = "github:numtide/flake-utils";
  };

  outputs =
    { 
      self,
      nixpkgs,
      nixvim,
      futils,
      ...
    }@inputs:
    let
      config = import ./config;
      nixpkgsConfig = {
        allowUnfree = true;
      };
    in
      futils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config = nixpkgsConfig;
        };
        nixvim' = nixvim.legacyPackages.${system};
        nvim = nixvim'.makeNixvim config;
      in
        {
          devShells.default = pkgs.mkShell {
            buildInputs = with pkgs; [
              pylint
	      vale
	      ruby
            ] ++ [nvim];

            shellHook = ''
              PS1="<nvim>"
              exec nvim 
            '';
          };
        }
    );
}
