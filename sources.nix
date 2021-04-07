args@{ overlays ? [ (import ./.) ], ... }:

# `git ls-remote https://github.com/nixos/nixpkgs-channels nixos-unstable`

import
  (builtins.fetchTarball {
    name = "nixos-unstable-2021-04-07";
    url = https://github.com/nixos/nixpkgs/archive/de679c57ca57.tar.gz;
    sha256 = "1vyxdgm39f4b3wsccqzwp4szj57f16nis1vz3mv8fxr1ycd2g2hj";
  })
  (args // { inherit overlays; })
