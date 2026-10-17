class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.3.0/homebutler_1.3.0_darwin_arm64.tar.gz"
      sha256 "181b11c002f41487a442b6e76839162953b397941a6a0904191a30f6abdf5c6d"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.3.0/homebutler_1.3.0_darwin_amd64.tar.gz"
      sha256 "057256f299f9b2f352f0d9db87fbaba0b5cab092c51c66422f7f38de6a15eca2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.3.0/homebutler_1.3.0_linux_arm64.tar.gz"
      sha256 "725b4e650a15db92fb178c4d67845b81633b0ae71e34d0e76582437c6a43e2c9"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.3.0/homebutler_1.3.0_linux_amd64.tar.gz"
      sha256 "b1f4e0304cd565350093f7c908a61b06549d1cbf7820d559d46243a284f3969e"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
