class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.8.1/homebutler_0.8.1_darwin_arm64.tar.gz"
      sha256 "977f9c1b52097824ec1b6fc2510cd5f4c1f168e2d54c45a07282554e6b21652b"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.8.1/homebutler_0.8.1_darwin_amd64.tar.gz"
      sha256 "b2c92b9c2add1da2450423204bf9de723142387fe4f27b374774480bf12545a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.8.1/homebutler_0.8.1_linux_arm64.tar.gz"
      sha256 "13b19c86ade711cba2ee5bf605e3b33a7fb938c939f99d9206b968dc71565bc7"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.8.1/homebutler_0.8.1_linux_amd64.tar.gz"
      sha256 "c087c827bd1f23357a7aaa803d31ec534fad42a9f8802969516760cace47e33a"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
