{ config, pkgs, ... }:

{
  zramSwap = {
    enable = true;
    memoryPercent = 150;
    priority = 100;
  };
}
