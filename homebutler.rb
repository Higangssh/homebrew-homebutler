class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.1.1/homebutler_1.1.1_darwin_arm64.tar.gz"
      sha256 "fc11bbc6b25c22537423ebf40a5dcb549ee082bd43cb371de2c9182d0b19a5aa"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.1.1/homebutler_1.1.1_darwin_amd64.tar.gz"
      sha256 "3edb32b5dc1c6ad03c320cb202f6f07d2fa4d8ad4363639928ce936820ad3d5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.1.1/homebutler_1.1.1_linux_arm64.tar.gz"
      sha256 "dc6c8a4181f52c8123c31525f4952c9104feb225d4b580d9e9a13de7a33613e4"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.1.1/homebutler_1.1.1_linux_amd64.tar.gz"
      sha256 "6e5657d52467b5c0036a47e954593bdf22d4b63be158691381a643daabcd3780"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
