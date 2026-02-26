class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.6.0/homebutler_0.6.0_darwin_arm64.tar.gz"
      sha256 "d57cbdf9067cff453e5b4ccbba63a984124a2fffa127a20b028f07ed0b6c253c"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.6.0/homebutler_0.6.0_darwin_amd64.tar.gz"
      sha256 "d39d8c3da6d4a92afd23c8a7814b22ee0fe704be415b25f79ae50a09bbc65ddc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.6.0/homebutler_0.6.0_linux_arm64.tar.gz"
      sha256 "862be4be9d90f127477a95f45cb3400208b99052f673a479e0183367031b80f1"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.6.0/homebutler_0.6.0_linux_amd64.tar.gz"
      sha256 "9b97a93f44d8dd8c6912ccd7858b98ff487eab8c6e789829e1bb95e86fd17cad"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
