{ ... }:
{
  programs.kitty = {
    enable = true;

    font = {
      name = "FiraCode Nerd Font Mono";
      size = 10.0;
    };

    settings = {
      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font = "auto";

      cursor_shape = "beam";
      cursor_trail = 1250;

      scrollback_lines = 20000;
      scrollback_pager_history_size = 64;

      remember_window_size = "no";
      initial_window_width = 800;
      initial_window_height = 600;
      confirm_os_window_close = 0;

      tab_bar_edge = "top";
      tab_bar_style = "powerline";
      tab_bar_min_tabs = 1;
      tab_powerline_style = "slanted";
      tab_title_max_length = 40;
      tab_title_template = "{fmt.fg.red}{bell_symbol}{activity_symbol}{fmt.fg.tab}{tab.last_focused_progress_percent}{index}. {title}";

      background = "#1e2021";
      background_opacity = "0.9";
      selection_background = "#2a2e32";

      editor = "nvim";
      notify_on_cmd_finish = "unfocused";
    };
  };
}
