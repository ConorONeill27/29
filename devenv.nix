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
    libxcrypt
    openai-whisper-cpp
    ffmpeg
  ];

  enterShell = ''
    whisper-cpp-download-ggml-model base.en
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
        name = "vocanote_development";
        user = "postgres";
        pass = "1234";
      }
    ];
    listen_addresses = "127.0.0.1";
  };

  processes.rails.exec = "bin/rails server";
}
