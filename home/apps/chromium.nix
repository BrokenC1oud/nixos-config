{ ... }:
{
  programs.chromium = {
    enable = true;
    extensions = [
      "ddkjiahejlhfcafbddmgiahcphecmpfh" # uBlock Origin Lite
      "bpoadfkcbjbfhfodiogcnhhhpibjhbnh" # Immersive Translation
    ];
  };
}
