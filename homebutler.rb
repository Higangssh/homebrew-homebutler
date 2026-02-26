class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.7.1/homebutler_0.7.1_darwin_arm64.tar.gz"
      sha256 "af4e13c9ccedaf59a87901955084b32976af95938aaf87d629df02ec20c4caa0"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.7.1/homebutler_0.7.1_darwin_amd64.tar.gz"
      sha256 "0a0d2cf8a7a3f4f9c557a55f181ac3015fbb5312cec3b43d53efad0df0e2cc27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.7.1/homebutler_0.7.1_linux_arm64.tar.gz"
      sha256 "650cec9c3552109fbc4549721e78858b79b85a1eaf6862b4d0f9a24169e8bea7"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.7.1/homebutler_0.7.1_linux_amd64.tar.gz"
      sha256 "0d8b7d2a3821664c7b2b89bf888637857cf3ab52a2b60bbe5a2440ef97f1e9bd"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
