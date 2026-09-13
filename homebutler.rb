class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.31.0/homebutler_0.31.0_darwin_arm64.tar.gz"
      sha256 "04bb2e2efe727df5a4b06aff8c53f224d16c6ad647b4a4b7d08d03fd3e59b40f"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.31.0/homebutler_0.31.0_darwin_amd64.tar.gz"
      sha256 "314de2b7001c24617c9e31fbe2fc0febf130db9afeb9af4ece5ec3b8952b71b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.31.0/homebutler_0.31.0_linux_arm64.tar.gz"
      sha256 "389ca9a1fb1ace17e7cb7a08692c4b2b40270d038d12532c8f797237f323cbea"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.31.0/homebutler_0.31.0_linux_amd64.tar.gz"
      sha256 "0e7b6f6e96495cf54fee1548c8eaaea531b209c16ea12415d0e7dd8fa2e06ca6"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
