{
  description = "Test Hydra";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    hardware.url = "github:NixOS/nixos-hardware/master";
  };
  outputs = { self, nixpkgs, hardware, ... }: {
    packages.x86_64-linux = {
      microsoft-surface-pro-intel = hardware.nixosModules.microsoft-surface-pro-intel;

    };

    hydraJobs = {
      inherit (self)
        packages;
    };
  };
}
