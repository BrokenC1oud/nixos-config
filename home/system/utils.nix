{ pkgs, ... }: {
  home.packages = with pkgs; [
    fastfetch
    tokei
    btop
  ];

  programs.hyfetch = {
    enable = true;
    settings = {
      preset = "transgender";
      mode = "rgb";
      pride_month_disable = false;
      color_align = {
        mode = "custom";
        custom_colors = {
          "1" = 1;
          "2" = 0;
        };
      };
      backend = "fastfetch";
    };
  };
}
