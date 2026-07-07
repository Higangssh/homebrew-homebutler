class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.19.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.19.2/homebutler_0.19.2_darwin_arm64.tar.gz"
      sha256 "2fec291d57c54a54ef416b750a9552e40884bd8b56c45f78dff29b0dabd15801"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.19.2/homebutler_0.19.2_darwin_amd64.tar.gz"
      sha256 "1aeda8c0a0450978b9af11da85a05fb5fe545297ee6f58ac9dafaafec2326f72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.19.2/homebutler_0.19.2_linux_arm64.tar.gz"
      sha256 "7d988293ed9262e5077c2910910c42804e998e376b5b611fa42f946b8be3058a"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.19.2/homebutler_0.19.2_linux_amd64.tar.gz"
      sha256 "0571b367e1802862399e825fd36d429b1cef0371fbb5b4fd94a7e93031497811"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
