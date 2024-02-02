{
  description = "Test Hydra";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    #hardware.url = "github:NixOS/nixos-hardware/master";
  };

  outputs = { self, nixpkgs, ... }: {
    packages."x86_64-linux" = {
      hello = pkgs.hello;
    };
  };

  hydraJobs = {
    inherit (self)
     packages.hello;
  };
}
