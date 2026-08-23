class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.21.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.21.1/homebutler_0.21.1_darwin_arm64.tar.gz"
      sha256 "4edd938fef234a009e31337dfcba41b1b5d53801f557d2f011c667ca093d8cab"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.21.1/homebutler_0.21.1_darwin_amd64.tar.gz"
      sha256 "1ad53ad5ecd95947f7ab9e9a4f3c76205ab91ce0001505d5e00d9051c3ef58c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.21.1/homebutler_0.21.1_linux_arm64.tar.gz"
      sha256 "98232ae0d9b57000fb76b7f4e9c6da13cce1b39d3b233d5352653aa31fea4e93"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.21.1/homebutler_0.21.1_linux_amd64.tar.gz"
      sha256 "e9594671f434ad8831fd101692008faa7506e45bf289d4284ad4d2a31c22292d"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
