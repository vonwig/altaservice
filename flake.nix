{
  description = "nixie";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-22.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:

    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
	
      in
      {
        devShells.default = pkgs.mkShell {
          name = "nixie";
          packages = with pkgs; [ neovim node2nix temurin-bin nodejs ];

          shellHook = ''
	    
            export DEV_ENV=nixie
          '';
        };
      });
}
