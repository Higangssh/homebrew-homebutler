class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.16.0/homebutler_0.16.0_darwin_arm64.tar.gz"
      sha256 "3a9b96488ebc24aa5b331316887af30d1f46448c562a7d8a48ae94eb91fb5ff7"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.16.0/homebutler_0.16.0_darwin_amd64.tar.gz"
      sha256 "107dd05541ec078742a29f0e9a4b9620b9cbf5cfc085a9573af98504a0e1da89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.16.0/homebutler_0.16.0_linux_arm64.tar.gz"
      sha256 "1b5b39239cace53f693d90ebfbe0505bd711199f3307646fe849059464884ffa"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.16.0/homebutler_0.16.0_linux_amd64.tar.gz"
      sha256 "4fec63bfe88da7af98a6ed7b194adf03dc0af8bdf07de7e265bb8cf372d5f834"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
