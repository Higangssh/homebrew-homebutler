class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.18.0/homebutler_0.18.0_darwin_arm64.tar.gz"
      sha256 "2fc0b2d046e82ea2d6b96e07fa1f244aca9297e4ef8cb388957f34e3347fc439"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.18.0/homebutler_0.18.0_darwin_amd64.tar.gz"
      sha256 "ff9f016f211264a918967df51d3b391e691c8c1c7f164dbda80f42fa3a37eb58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.18.0/homebutler_0.18.0_linux_arm64.tar.gz"
      sha256 "93d01d09b6e567d8a96cef0c926c9cf7ce6010c01f156bdbf3190cf1023ee791"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.18.0/homebutler_0.18.0_linux_amd64.tar.gz"
      sha256 "0d48d752a3b553bc8b12f352a39f05de6d03e1b812f5cbf081918d68af29d3d4"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
