class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.28.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.28.0/homebutler_0.28.0_darwin_arm64.tar.gz"
      sha256 "842151abb693597484a83a5d4afa171ad9778fb4fb28568655c09d2c27c68a68"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.28.0/homebutler_0.28.0_darwin_amd64.tar.gz"
      sha256 "b642516c1e377f50a116411a8f3451157a0345307764b79ccbf21a27e4b54832"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.28.0/homebutler_0.28.0_linux_arm64.tar.gz"
      sha256 "f4aeb4a2d3df60ae9180f01a23878079d5a25afa56ed7ee7e5340cf793869ece"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.28.0/homebutler_0.28.0_linux_amd64.tar.gz"
      sha256 "340ca1aabe35e2997f8029c5203ac932cdb5ae0cea50546fbea67a800f3c959b"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
