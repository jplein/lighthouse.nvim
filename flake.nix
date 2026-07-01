{
  description = "lighthouse.nvim — generate colors/lighthouse.lua from the Lighthouse palette";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";

    # The template generator: turns lighthouse-template.lua + the palette YAML
    # into the final colorscheme. It builds against its own pinned nixpkgs (the
    # Go toolchain its vendorHash was computed with), so we don't `follows` it.
    dotfiles-generator.url = "github:jplein/dotfiles-generator/aa20683dff553083c4bedfb201b9c97cb98ace63";

    # The Lighthouse color values (lighthouse.yaml), exposed as `lighthouseYaml`.
    lighthouse.url = "github:jplein/lighthouse/0aa8dd6fa4c9b314fe9b1f2905cf62caf52b2ad5";
  };

  outputs =
    { self, nixpkgs, flake-utils, dotfiles-generator, lighthouse }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        # The overlay exposes `pkgs.dotfiles-generator`, built with the
        # generator flake's own pinned toolchain.
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ dotfiles-generator.overlays.default ];
        };

        # Run the generator against the template and the Lighthouse palette,
        # capturing the resulting Lua colorscheme.
        lighthouse-lua = pkgs.stdenvNoCC.mkDerivation {
          pname = "lighthouse-lua";
          version = "0.1.0";
          src = ./build/template;

          nativeBuildInputs = [ pkgs.dotfiles-generator ];

          dontConfigure = true;

          buildPhase = ''
            runHook preBuild

            dotfiles-generator template \
              --in lighthouse-template.lua \
              --out lighthouse.lua \
              --palettes ${lighthouse.lighthouseYaml} \
              --default-palette dark \
              --os mac

            runHook postBuild
          '';

          installPhase = ''
            runHook preInstall
            install -Dm444 lighthouse.lua $out/lighthouse.lua
            runHook postInstall
          '';

          meta.description = "Lighthouse Neovim colorscheme (colors/lighthouse.lua)";
        };
      in
      {
        packages = {
          default = lighthouse-lua;
          lighthouse-lua = lighthouse-lua;
        };
      }
    );
}
