class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.5.1/homebutler_0.5.1_darwin_arm64.tar.gz"
      sha256 "42103be6c8340e45d134dbedd5230803e642000d97b90fe290a30e03af671750"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.5.1/homebutler_0.5.1_darwin_amd64.tar.gz"
      sha256 "3b4bf75515aa65136812ec9c44050c6e7de6663aa61c1db645e40cd32d4ffbe7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.5.1/homebutler_0.5.1_linux_arm64.tar.gz"
      sha256 "a7d2fb202b95abfdfd8dfeef3a87978d63f0002345126fc28efd633b894c598b"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.5.1/homebutler_0.5.1_linux_amd64.tar.gz"
      sha256 "dc1e607e6f927360cdf9d30b62d404225334d8f605e3bd7b9504ecb9735246dd"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
