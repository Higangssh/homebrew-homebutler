class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.37.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.37.0/homebutler_0.37.0_darwin_arm64.tar.gz"
      sha256 "d594487473e9f9a0c1661b5031e302eea85e5acc1beb13ab1b5a9e00a532a39d"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.37.0/homebutler_0.37.0_darwin_amd64.tar.gz"
      sha256 "4dc89137e4a70d8406c962d20a7602c703e2ad3378c236d74c5f74bef4b3ad1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.37.0/homebutler_0.37.0_linux_arm64.tar.gz"
      sha256 "d8d8f4c647b20b615ab590e0e530af1a5c0f4ecfcd6cecd809e08aac0ddc2079"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.37.0/homebutler_0.37.0_linux_amd64.tar.gz"
      sha256 "be74d07f638243743cb4529ce24bb437eb31cd6ac04e1312339eb605f0b27a00"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
