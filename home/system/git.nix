{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "BrokenC1oud";
        email = "jgbsxx20130315@gmail.com";
      };
      init.defaultBranch = "master";
    };
  };
}
