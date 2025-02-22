{
  pkgs,
  nixpkgs-ruby,
  ...
}: {
  packages = with pkgs; [
    git
    pkg-config
    libyaml.dev
    openssl.dev
    libffi
    zlib
    libxml2.dev
    libxslt.dev
  ];

  enterShell = ''
    git --version
    ruby --version
    bundle
  '';

  languages.ruby = {
    enable = true;
    package = nixpkgs-ruby.packages.${pkgs.system}."ruby-3.4.2";
  };

  services.postgres = {
    enable = true;
    initialDatabases = [
      {
        name = "vocanote";
        user = "voca";
        pass = "note";
      }
    ];
    listen_addresses = "127.0.0.1";
  };

  processes.rails.exec = "bin/rails server";
}
