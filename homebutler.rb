class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.22.0/homebutler_0.22.0_darwin_arm64.tar.gz"
      sha256 "0636a3cc5922de5d3159f56d9c4586e4c8f24e1173b179d907586a90bc275424"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.22.0/homebutler_0.22.0_darwin_amd64.tar.gz"
      sha256 "8efa4afa5b975f3d4f38ce274ef2f4359b0a4737c433aaf8d16a0cb946bbf4c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.22.0/homebutler_0.22.0_linux_arm64.tar.gz"
      sha256 "3fec36516ded4f66765fed3764826d27fcfdbfa52ede82ea8c465098f17e972c"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.22.0/homebutler_0.22.0_linux_amd64.tar.gz"
      sha256 "48c1bcf70d10be87f931038f038fc0a585554fafd65fb97d62a1b7131f5141e6"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
