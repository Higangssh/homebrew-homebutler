class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.5.0/homebutler_1.5.0_darwin_arm64.tar.gz"
      sha256 "2852a381844e0c5cd14a80c80c1509b071ff0b0f585b87f179e52ecb13b417a1"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.5.0/homebutler_1.5.0_darwin_amd64.tar.gz"
      sha256 "7a97d2d89c216f9c9f98b63d6a1d6e2aee4babd54f2c32b30ecd7131225ce18e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.5.0/homebutler_1.5.0_linux_arm64.tar.gz"
      sha256 "40cce1d9d2d7493f816aca4f4eb3a17ebefb3e4ae4b5aed7fe390ce97ce8beca"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.5.0/homebutler_1.5.0_linux_amd64.tar.gz"
      sha256 "6a20c7d6b83083a3ffc87d13c834a85b06f6dc002440ee169efda59233d3f7b4"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
