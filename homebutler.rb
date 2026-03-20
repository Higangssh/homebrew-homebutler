class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.10.1/homebutler_0.10.1_darwin_arm64.tar.gz"
      sha256 "c4e51857b150687cd5fea5294ba8cc62a79f1058a5f8c0a41ca8841655d51c82"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.10.1/homebutler_0.10.1_darwin_amd64.tar.gz"
      sha256 "a1ac767f5e666d85fb830b77a42ab3ee43c244b1db19ec93b3a24c2d3fa63a9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.10.1/homebutler_0.10.1_linux_arm64.tar.gz"
      sha256 "0e2081f402e401e38ae7340b8aeb57ae472d6994aa9c0d9024c04bbfa7440655"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.10.1/homebutler_0.10.1_linux_amd64.tar.gz"
      sha256 "c1146a484eb39ba95afad32ee2c3af589b5ef391b7b427c8fc7520b00eb44ecc"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
