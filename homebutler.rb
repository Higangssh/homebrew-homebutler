class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.35.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.35.2/homebutler_0.35.2_darwin_arm64.tar.gz"
      sha256 "6aece126c64c88d2d3e53f3c84953938181d90a605a3a1941c0cc06c2ac313a0"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.35.2/homebutler_0.35.2_darwin_amd64.tar.gz"
      sha256 "8ba401b84292c2011211c14720e950fbc372ba2531d42179068edb783bc5fbdd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.35.2/homebutler_0.35.2_linux_arm64.tar.gz"
      sha256 "c08b1406c885f2cc902c51c63a3c2d4b869c24bb4fec43bb630d1a4be24a7608"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.35.2/homebutler_0.35.2_linux_amd64.tar.gz"
      sha256 "170ffe105189beffa067cccc931740dbe3eb8252ba0af5f2f4e604f1bda9cd1e"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
