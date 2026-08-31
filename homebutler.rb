class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.24.0/homebutler_0.24.0_darwin_arm64.tar.gz"
      sha256 "1cc92700bfd9b6274f123972bc5020dfe9ae83293b9f128139469b7f71e39ce8"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.24.0/homebutler_0.24.0_darwin_amd64.tar.gz"
      sha256 "aad10429f248a49ee51d4b76532ab5889dc5e5efdbb84044576e30c345cca06e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.24.0/homebutler_0.24.0_linux_arm64.tar.gz"
      sha256 "03779d7a030d578883597a92e786b84ce9390f91b84728ba29f74960dbc19980"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.24.0/homebutler_0.24.0_linux_amd64.tar.gz"
      sha256 "2cec43fcd2f694551790c1081f36066efe8f8b9b66d56da205dc7ee3d4a96bf3"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
