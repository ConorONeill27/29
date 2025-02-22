{pkgs, ...}: {
  languages = {
    javascript = {
      enable = true;
      bun.enable = true;
      npm.enable = true;
    };
    typescript.enable = true;
  };
}
