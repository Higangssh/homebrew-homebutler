class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.14.0/homebutler_0.14.0_darwin_arm64.tar.gz"
      sha256 "f782b06bd27bab60580c6810f7253131f92a6e3df92555fd6a81060c1a04ddac"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.14.0/homebutler_0.14.0_darwin_amd64.tar.gz"
      sha256 "5716f81afaf82e467a032cc329b14963da48e0318f187b15d9c11b6985447252"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.14.0/homebutler_0.14.0_linux_arm64.tar.gz"
      sha256 "eba1260fd2f395bb13f3b9ccd6508d0877865c9e29273e5638647c91de6d3f8b"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.14.0/homebutler_0.14.0_linux_amd64.tar.gz"
      sha256 "272cfd1d873b457efc0139f755425b7252624498867f6410e9f65b2ec5eb0356"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
