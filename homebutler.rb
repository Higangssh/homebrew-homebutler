class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.8.2/homebutler_0.8.2_darwin_arm64.tar.gz"
      sha256 "989a0814432dd1a8e72462cb6361418c60aaf42d9918beb3c469e921b8dc38f9"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.8.2/homebutler_0.8.2_darwin_amd64.tar.gz"
      sha256 "e4c9a978c454d3efc0d775c37bac5062aada7878c66fbd579074ac75fbb7d415"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.8.2/homebutler_0.8.2_linux_arm64.tar.gz"
      sha256 "581e34372ba3638cf3080c7e5fe5edb88b882dc3888f50220b1568139c15bc41"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.8.2/homebutler_0.8.2_linux_amd64.tar.gz"
      sha256 "670a74c71673c66e65f5fe53c3f9e2766b41d77b8a927a1695ad064cd02ea501"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
