class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.29.0/homebutler_0.29.0_darwin_arm64.tar.gz"
      sha256 "035ec35bd9723c082f35c557ca0b2ad48632124f9388fa87a3fd1bee54423f1f"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.29.0/homebutler_0.29.0_darwin_amd64.tar.gz"
      sha256 "a8f828dfcdfd465bf0c08e6eaf0daa1eaeefb5053af00c77d5d3b9f749d1f263"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.29.0/homebutler_0.29.0_linux_arm64.tar.gz"
      sha256 "44db90eaf7cf88d089c5940ec1f4cc817c6d9e8055b9a724ab45c1f9fde730b6"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.29.0/homebutler_0.29.0_linux_amd64.tar.gz"
      sha256 "0ad38f8bb909a2ab7ac1bb4ba25b49d4dbe2cce7f9275d1b58926b651eb9e0ba"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
