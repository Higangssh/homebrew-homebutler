class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.21.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.21.2/homebutler_0.21.2_darwin_arm64.tar.gz"
      sha256 "bccb11d8cd8f53758e9f089fd6a8aa02352e3bd535e6893746656dd4e8419145"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.21.2/homebutler_0.21.2_darwin_amd64.tar.gz"
      sha256 "5620ec086d83df0e9aa8453d9f795227a375d0d71d5dc88a20d231ff8bedb54d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.21.2/homebutler_0.21.2_linux_arm64.tar.gz"
      sha256 "6355a689e6e36a0ec1c54591fe843adbfea336208d46934a182300dfeb20e8b2"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.21.2/homebutler_0.21.2_linux_amd64.tar.gz"
      sha256 "01a3317402568978f7b4a2cb9802792c1eb5d414c21b6cd37ca9a96b52d07845"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
