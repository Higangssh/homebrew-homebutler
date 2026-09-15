class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.32.0/homebutler_0.32.0_darwin_arm64.tar.gz"
      sha256 "2145762fc86afcab533e649734d9490896517cd63ef6b2b400091ca285ccf999"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.32.0/homebutler_0.32.0_darwin_amd64.tar.gz"
      sha256 "7c8b5f8b66800fed0a54bec68e200c78a347f270928b2c2d070c2f341b83b19a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.32.0/homebutler_0.32.0_linux_arm64.tar.gz"
      sha256 "4e7a28c0b40059b9357be6db3bd340228d0766541aa885605305e1f7011f0005"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.32.0/homebutler_0.32.0_linux_amd64.tar.gz"
      sha256 "8325d0e899419845a26babbc0fada89b502a9763a9aff47bfc3d07a04d5432f4"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
