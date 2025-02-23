{ pkgs, ... }: {
  packages = with pkgs; [
    git
    ruby_3_3
    pkg-config
    libyaml.dev
    openssl.dev
    libffi
    zlib
    libxml2.dev
    libxslt.dev
    libxcrypt
  ];

  enterShell = ''
    whisper-cpp-download-ggml-model base.en
    ruby --version
    bundle
  '';

  languages.ruby = {
    enable = true;
    package = pkgs.ruby_3_3;
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

  processes.rails.exec = "rails server";
}
