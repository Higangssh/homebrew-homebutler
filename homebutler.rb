class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.21.0/homebutler_0.21.0_darwin_arm64.tar.gz"
      sha256 "3412dafff4c5f3652922eebedb46a394f68232b2d2daf89a7bc6852d1a43aa95"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.21.0/homebutler_0.21.0_darwin_amd64.tar.gz"
      sha256 "21e2e18709cd93b1c4a68f798c487841326e6358e88e09824fdbeedfe888cd5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.21.0/homebutler_0.21.0_linux_arm64.tar.gz"
      sha256 "c63d71289c762a230dc41ea2412abc554f47287fcdf829dcabeb2393a5c46119"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.21.0/homebutler_0.21.0_linux_amd64.tar.gz"
      sha256 "7e80f494dd6bcaeb585047870bd816fc230dbb67f564e41fad751dafcbd85bc1"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
