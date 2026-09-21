class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.38.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.38.0/homebutler_0.38.0_darwin_arm64.tar.gz"
      sha256 "dd3800c6922e21ee7eab573a7800d46f1c84779897d9e99a46d14b2003d4ee31"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.38.0/homebutler_0.38.0_darwin_amd64.tar.gz"
      sha256 "ab149573a55a259fcb3b9a605614903d69a4eb661261949e919b31e3859c2b0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.38.0/homebutler_0.38.0_linux_arm64.tar.gz"
      sha256 "8807ccff882fbe28f705e7819dbdbde92f4c4a4d8cfcba53253ec1b2da3b59c5"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.38.0/homebutler_0.38.0_linux_amd64.tar.gz"
      sha256 "0c295297e3f4be68766914d6f690a34da90817ca99764f50527aa281b0b84548"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
