class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.23.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.23.1/homebutler_0.23.1_darwin_arm64.tar.gz"
      sha256 "3772dd72fa6b6c0ce3882ead54a41442c1ecc0dbe6cf5986a9f790869da18885"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.23.1/homebutler_0.23.1_darwin_amd64.tar.gz"
      sha256 "117c62e6b8234545a25b649c03d309f3203ac1f86e110711f8ea0f1f2fb309ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.23.1/homebutler_0.23.1_linux_arm64.tar.gz"
      sha256 "c195b2d1ddc6d45cdf8574fdd36b0aa9420b1b11e995c936be8268b036523eb2"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.23.1/homebutler_0.23.1_linux_amd64.tar.gz"
      sha256 "150019702256e5be100ee774c1187a909f8253cd788672f37647434b61caee26"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
