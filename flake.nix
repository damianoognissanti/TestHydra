{
  description = "Test Hydra";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    hardware.url = "github:NixOS/nixos-hardware/master";
  };
  
  outputs = {
    self,
    hardware,
    ...
  } @ inputs: let
    inherit (self) outputs;
  in {
    packages.x86_64-linux = {
      hardware.nixosModules.microsoft-surface-pro-intel;
    };

    hydraJobs = {
      packages;
    };
  };
}
