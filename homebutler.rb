class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.2.1/homebutler_0.2.1_darwin_arm64.tar.gz"
      sha256 "0134b4b367a46de1768488c4391380f959345f3cfefb78b95bf9989f0fcc9cb6"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.2.1/homebutler_0.2.1_darwin_amd64.tar.gz"
      sha256 "d0983d24d08610ce035b94942b724648554e60f212fce6de3a545c820fdf4964"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.2.1/homebutler_0.2.1_linux_arm64.tar.gz"
      sha256 "7cad3d66933413e4cc7a70fb14026a1f5481a7a3b8f6a641cfb307e261c5ccd8"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.2.1/homebutler_0.2.1_linux_amd64.tar.gz"
      sha256 "04eb7d9d46acdb6c8949aef5504f9262407063c13988f2627f8ab525ae1cbf0e"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
