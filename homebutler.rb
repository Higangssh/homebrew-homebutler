class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.41.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.41.1/homebutler_0.41.1_darwin_arm64.tar.gz"
      sha256 "4fad0ba8531f2ac1edef74b016714017be4588da64e091f8198a73cf0289919e"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.41.1/homebutler_0.41.1_darwin_amd64.tar.gz"
      sha256 "aa1bee83634d200ca6b050a4cb38655798905e6a3d5ad1287afb79d6f7324bbd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.41.1/homebutler_0.41.1_linux_arm64.tar.gz"
      sha256 "0b2258d77098348c56c0b9595aadb652e8a1154b0ffa0ac6da6c483cac13fdcb"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.41.1/homebutler_0.41.1_linux_amd64.tar.gz"
      sha256 "d483469f1d468bec718c35b1809bff3823cbb1f01eceb141383ce313f78e0567"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
