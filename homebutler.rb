class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.35.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.35.1/homebutler_0.35.1_darwin_arm64.tar.gz"
      sha256 "7db5a217bf7e3ca22acd36feb43bef6cb0527f5c3bd4e861ea7f0cf7d64a7c95"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.35.1/homebutler_0.35.1_darwin_amd64.tar.gz"
      sha256 "8dfa311d93756aaa2416c18ed95fe2cc253ec8844aa55c9e2d1a02f88ec29b5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.35.1/homebutler_0.35.1_linux_arm64.tar.gz"
      sha256 "7159b689f2cf5c0791eb0f62dafb7ed9a0d3e4ff869b5fcfa1f8908cfbb9a36a"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.35.1/homebutler_0.35.1_linux_amd64.tar.gz"
      sha256 "49d724c211b55006c9e85064ddbde1f6a0fd4417ce44fd3c32cc8895d5488564"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
