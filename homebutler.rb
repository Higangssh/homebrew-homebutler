class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.4.0/homebutler_0.4.0_darwin_arm64.tar.gz"
      sha256 "5c35d5ba3b271908f1f30cb33cb8f30f8fe0d7d5a5b9ed3d86e43529edfa8c88"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.4.0/homebutler_0.4.0_darwin_amd64.tar.gz"
      sha256 "39b8de38b5297f69a5032618d43bd47f045c26ffeff6890576740855697d78c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.4.0/homebutler_0.4.0_linux_arm64.tar.gz"
      sha256 "8d8255a0c78f9c816d705e0ee8ddb4f83eca74ed084f1893dc1da5f68c1211c6"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.4.0/homebutler_0.4.0_linux_amd64.tar.gz"
      sha256 "5b9a8dba8d5034dd37c5c0401b655c115bd87c40732faadea8928720add6edc5"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
