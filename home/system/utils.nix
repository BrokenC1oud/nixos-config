{ pkgs, ... }: {
  home.packages = with pkgs; [
    fastfetch
    tokei
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