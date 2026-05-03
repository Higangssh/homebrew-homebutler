class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.18.1/homebutler_0.18.1_darwin_arm64.tar.gz"
      sha256 "ec8507eab5dd6a4da6f07dec1c0a379ae516dd115bdb49604bf75bdc7a5f2367"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.18.1/homebutler_0.18.1_darwin_amd64.tar.gz"
      sha256 "5443c811ee65e97afa89c998b61b80f7fb1d8c75fb6855d382f5f4dba28ed926"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.18.1/homebutler_0.18.1_linux_arm64.tar.gz"
      sha256 "3959522d7d507e20502a181d9fc37e9fed5263e7c44746d53032b8f6dc4c2998"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.18.1/homebutler_0.18.1_linux_amd64.tar.gz"
      sha256 "2842c4984a1b9ef849ab675bec8c1156ba690434ce3193d0ffd7070f358edf49"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
