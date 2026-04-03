class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.12.1/homebutler_0.12.1_darwin_arm64.tar.gz"
      sha256 "6b6df4ea72215e4c288dc4a2375b736b8a17bb38d7f026d36920c8a71bc66bb3"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.12.1/homebutler_0.12.1_darwin_amd64.tar.gz"
      sha256 "1a82d23c065f1bb7d6534eec47b35d6ecf3663e12828a5ea4c336be6affba839"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.12.1/homebutler_0.12.1_linux_arm64.tar.gz"
      sha256 "935355490d22c377d0ae5b03c53b09bd8aee0de772d34c83392f16638b73e4fe"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.12.1/homebutler_0.12.1_linux_amd64.tar.gz"
      sha256 "edc0c1674943c32a0d9998b6be2136884f0a8500c5a018c95d498d0b138e0600"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
