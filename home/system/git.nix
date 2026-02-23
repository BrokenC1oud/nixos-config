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
    signing = {
      key = "537AD26C1119CB8CB8ED33A6A017C9EE93481353";
      signByDefault = true;
    };
  };
}
