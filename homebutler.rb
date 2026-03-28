class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.11.0/homebutler_0.11.0_darwin_arm64.tar.gz"
      sha256 "f94be8e1f5aed3a1c84d6c68166903cf3ae61c1975fee489e1102b802c5a2e2a"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.11.0/homebutler_0.11.0_darwin_amd64.tar.gz"
      sha256 "f66ce3c55538f1478f93120dac2a416d38c16c11a21061f6bcbabf13a3fd9463"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.11.0/homebutler_0.11.0_linux_arm64.tar.gz"
      sha256 "79daf10fce298fb50553248b6f67d0abee13245a9891aa4f10cd5303bfd7e12f"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.11.0/homebutler_0.11.0_linux_amd64.tar.gz"
      sha256 "7311170c299996a380e65f301594fd5a16b1a9b19c5961a787abb770472e6e14"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
