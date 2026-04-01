class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.11.1/homebutler_0.11.1_darwin_arm64.tar.gz"
      sha256 "364694445a522d55c96deaaa597f73242b6c88def888ed711132b8ad177d97ae"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.11.1/homebutler_0.11.1_darwin_amd64.tar.gz"
      sha256 "67074d55a36a53eb2c375c9fc4a84cd4b5e44e852a4a0b48418b5f65b40baab7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.11.1/homebutler_0.11.1_linux_arm64.tar.gz"
      sha256 "2d6ef09676a69733cb6f030d8c81aed8469e157433d86e2ef02cbfe5ca9a3d34"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.11.1/homebutler_0.11.1_linux_amd64.tar.gz"
      sha256 "ed3fdb9525bf856c94cc831efe0b794425553bd3f077392c024161f549333bd1"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
