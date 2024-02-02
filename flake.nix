{
  description = "Test Hydra";
  inputs = {
    hardware.url = "github:NixOS/nixos-hardware/master";
  };

  outputs = { self, hardware, ... }: {
    packages."x86_64-linux" = {
      surface = hardware.nixosModules.microsoft-surface-pro-intel;
    };
    
  };

  hydraJobs = {
    inherit (self)
    packages;
  };
}
