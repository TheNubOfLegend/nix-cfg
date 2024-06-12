{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    zig
    rustup
    go
    gcc
    cmake
  ];
}
