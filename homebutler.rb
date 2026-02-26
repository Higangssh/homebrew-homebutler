class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.6.1/homebutler_0.6.1_darwin_arm64.tar.gz"
      sha256 "b3cdee1b2f22d1f0dffbe3fa2a9193d037e6bc1467df59c882995b7c29e2e3c7"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.6.1/homebutler_0.6.1_darwin_amd64.tar.gz"
      sha256 "07ceda90925becaabc51c8c5705da334c2842a75ad4e7091ad0dd148f31177f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.6.1/homebutler_0.6.1_linux_arm64.tar.gz"
      sha256 "ce0d75331eae17ea301f35e6970881a1a58aba24eb296bb8eac09fedafbea35b"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.6.1/homebutler_0.6.1_linux_amd64.tar.gz"
      sha256 "8d8d55b037eb7eab1413275add04d72bae162743ea1268cf46b3a2c910037473"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
