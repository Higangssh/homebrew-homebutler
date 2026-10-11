class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.0.0/homebutler_1.0.0_darwin_arm64.tar.gz"
      sha256 "ea3e97f685ff807de4fbfd2daa70b81012ed83052390e033f9e2dd51cd8aa1e4"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.0.0/homebutler_1.0.0_darwin_amd64.tar.gz"
      sha256 "770aa33b5299a27bb5da3ff23e4edfd1e1af6beb84dc18f3f2048c3d6963662f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.0.0/homebutler_1.0.0_linux_arm64.tar.gz"
      sha256 "3e341360492fad5ce9faf0222ac2ed2083c0967160ccf52cbbf78dbdecc99104"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.0.0/homebutler_1.0.0_linux_amd64.tar.gz"
      sha256 "1b7c1fa11b7f4bf7e4a9e7ae6207e3ae55abadd8a157a56a01e405d1ee6cacd6"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
