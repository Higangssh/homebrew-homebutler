class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.33.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.33.0/homebutler_0.33.0_darwin_arm64.tar.gz"
      sha256 "dfbcae452b8cc1a69555223dd3eda7f7b2c645a87f6e8bde726762b252dc52f7"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.33.0/homebutler_0.33.0_darwin_amd64.tar.gz"
      sha256 "44660591745e33fff27edf38be2017c73c7975df55fd16f29f715b498dfcf29b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.33.0/homebutler_0.33.0_linux_arm64.tar.gz"
      sha256 "9b258098807177895ee0d0705d9bb64d01766dd9bf50e1bce3ab94dd966fdc25"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.33.0/homebutler_0.33.0_linux_amd64.tar.gz"
      sha256 "03be6b803a05b36328a43810b8a47a0fc3ee714aa142576b7d34b442e62f08c1"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
