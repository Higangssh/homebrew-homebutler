class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.13.0/homebutler_0.13.0_darwin_arm64.tar.gz"
      sha256 "d2e78de9c723c6607b815de958491ba664522d5567f8f362dc2e80f9cb7efe8a"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.13.0/homebutler_0.13.0_darwin_amd64.tar.gz"
      sha256 "a3cea8b7e6768ecf16ac27283a102ca5852c06a90702697504b0f5f13a975dce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.13.0/homebutler_0.13.0_linux_arm64.tar.gz"
      sha256 "60857f5bd89f582d3292277102a43d7221ab4192acbfa5f376a388e0194c58d2"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.13.0/homebutler_0.13.0_linux_amd64.tar.gz"
      sha256 "f36079e808ec1d03fae1687a986f324f0fe8a3fcc19ff3e9cb79f341f7e95bbd"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
