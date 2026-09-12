class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.29.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.29.1/homebutler_0.29.1_darwin_arm64.tar.gz"
      sha256 "0b81af4d2bb013542cdd37aefd3126fd67569b724eb45a075196f5f2b73145cb"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.29.1/homebutler_0.29.1_darwin_amd64.tar.gz"
      sha256 "b36ddd9917379b634984bab4c7f345d21d6482ddbf032c7f9c195f36e8cc5986"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.29.1/homebutler_0.29.1_linux_arm64.tar.gz"
      sha256 "1e8dfe970680a9d6bd6735a40a568f0d74604896489dd08e9cf838bb9bc2d48d"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.29.1/homebutler_0.29.1_linux_amd64.tar.gz"
      sha256 "d92951b14557d79bbd35df9ed35405c7320002d6c64c7db1c4a86ba3b720e245"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
