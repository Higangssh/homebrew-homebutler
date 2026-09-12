class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.30.0/homebutler_0.30.0_darwin_arm64.tar.gz"
      sha256 "d5a1d2198dbe540d07d5e09bc8833108e97aaa958c504502ad9a12d21c1838bf"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.30.0/homebutler_0.30.0_darwin_amd64.tar.gz"
      sha256 "f6cea4e52db6faaaebe7525cfe5614f45e43eb188152edaaa1054b42ad606d33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.30.0/homebutler_0.30.0_linux_arm64.tar.gz"
      sha256 "52fd21175261cee4fafa2161dd209c89acd095d004d086a1839a9c0c726a73ca"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.30.0/homebutler_0.30.0_linux_amd64.tar.gz"
      sha256 "df8e98b340a8241f0967e86f0ca2429ac516bf4583764b9b534c9d8e77acd9bd"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
