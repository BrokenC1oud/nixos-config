{ ... }:
{
  programs.hyfetch = {
    enable = true;
    settings = {
      preset = "transgender";
      mode = "rgb";
      color_align = {
        mode = "custom";
	custom_colors = {
	  "1" = 0;
	  "2" = 1;
	};
      };
      backend = "neofetch";
      pride_month_disable = false;
    };
  };
}
