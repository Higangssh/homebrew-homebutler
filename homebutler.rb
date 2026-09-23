class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.39.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.39.0/homebutler_0.39.0_darwin_arm64.tar.gz"
      sha256 "70e6ad8bb6f2f6323c0e6ed23b70a79a6b2592f6600b5db8725606e650940956"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.39.0/homebutler_0.39.0_darwin_amd64.tar.gz"
      sha256 "c00d3bbb14541317011652f4f36397ab3cd067bb10ca5003562e97530ae12753"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.39.0/homebutler_0.39.0_linux_arm64.tar.gz"
      sha256 "8679d21554719965c22715982d091db8b4f8f2659058314854a2de674cf88622"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.39.0/homebutler_0.39.0_linux_amd64.tar.gz"
      sha256 "e4421dabee51ec0c05899ec64b2057df052878167470b0fd16f47f72962bbdc2"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
