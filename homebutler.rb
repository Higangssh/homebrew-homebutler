class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.27.0/homebutler_0.27.0_darwin_arm64.tar.gz"
      sha256 "f14e25a3aa0445c2e0ec33197fb9101631329c4f88e6f6da6c346a48d3a7d0a3"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.27.0/homebutler_0.27.0_darwin_amd64.tar.gz"
      sha256 "a31d880a512562ff953b9646ce258922cb9f3eb09b2c4360c1e1ceda6a2d8920"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.27.0/homebutler_0.27.0_linux_arm64.tar.gz"
      sha256 "a5074f045f3e8041304e15035e5521c49345dc9cf4487a37b1127fb7f811b963"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.27.0/homebutler_0.27.0_linux_amd64.tar.gz"
      sha256 "8c50f31b77b667babd11782c34e2db72ef2587d0ddc2b97f7b8fa91289d8f35b"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
