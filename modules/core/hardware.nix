{ pkgs, ... }:
{  
  hardware = {
    graphics = {
      enable = true;
      extraPackages = with pkgs; [
        amdvlk
    rocm-opencl-icd
    rocm-opencl-runtime
      ];
      extraPackages32  = with pkgs; [
        driversi686Linux.amdvlk
      ];
    };
  };
  hardware.enableRedistributableFirmware = true;

  # bluetooth
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
  services.blueman.enable = true;

  # Firmware updates
  services.fwupd.enable = true;

  # /tmp as tmpfs
  boot.tmp = {
    useTmpfs = true;
    # tmpfsSize = "50%";
  };
}
