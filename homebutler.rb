class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.26.0/homebutler_0.26.0_darwin_arm64.tar.gz"
      sha256 "5076228a2214cf63955d820a9c3424c5c8f875b05d8103e5668aa9fc37124db6"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.26.0/homebutler_0.26.0_darwin_amd64.tar.gz"
      sha256 "283ce72fe34594317ccd35a17dbf53423e5f8d0d4de1cc0a6f8987c941f1f385"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.26.0/homebutler_0.26.0_linux_arm64.tar.gz"
      sha256 "064aef9482178ad7e34b8a43a37581363c9421d5fe275b2548902386c6cbdc20"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.26.0/homebutler_0.26.0_linux_amd64.tar.gz"
      sha256 "26609386ab196ab06356993ad13590926321d29abbbc35be7e88334b70d65181"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
