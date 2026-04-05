class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.14.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.14.1/homebutler_0.14.1_darwin_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.14.1/homebutler_0.14.1_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.14.1/homebutler_0.14.1_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.14.1/homebutler_0.14.1_linux_amd64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
