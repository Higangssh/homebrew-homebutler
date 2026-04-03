class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.12.0/homebutler_0.12.0_darwin_arm64.tar.gz"
      sha256 "f9eef34a22ef4b69530bc3f1b24e39fa9a6bede6e7878ed59da7656d42318100"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.12.0/homebutler_0.12.0_darwin_amd64.tar.gz"
      sha256 "baad78ba6cc2c1f448ebd849e7573f2c2d1d193f069f38f0ee0d787ed968376f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.12.0/homebutler_0.12.0_linux_arm64.tar.gz"
      sha256 "8d17b84873ced3dc88bc97e6b34eae92969f40939489588761062178d0ce352b"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.12.0/homebutler_0.12.0_linux_amd64.tar.gz"
      sha256 "5415566291822fefd6ad725cbda4051618f3f3c002a204c4d7975b4be0293407"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
