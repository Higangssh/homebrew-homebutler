class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "1.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.8.0/homebutler_1.8.0_darwin_arm64.tar.gz"
      sha256 "9017e2275fe5ba75e40cec27c3207d482f8f895d16965818441460ff24f043ce"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.8.0/homebutler_1.8.0_darwin_amd64.tar.gz"
      sha256 "1d65703050bc89da249385b09899894830d915f2bebe20d75cd952bf26ebd0be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.8.0/homebutler_1.8.0_linux_arm64.tar.gz"
      sha256 "9aa9836219874b342b8f5cc0991dc81a59eb20ea8d0cc872ae3b6a3496d6e4cb"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.8.0/homebutler_1.8.0_linux_amd64.tar.gz"
      sha256 "b652bdf9f38cf06604d77e84856071176a44aff04ec0b7a2f7ff5d3304e4397d"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
