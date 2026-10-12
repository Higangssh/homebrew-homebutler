class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.2.0/homebutler_1.2.0_darwin_arm64.tar.gz"
      sha256 "3e63112fb8354f29eff4f3a34ed135d5b16a3ac28150e5eb36c037490f3999b2"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.2.0/homebutler_1.2.0_darwin_amd64.tar.gz"
      sha256 "1da757e88aafeb69989572aa3cfa13c783dfb5baba8990259ba6928be0860670"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.2.0/homebutler_1.2.0_linux_arm64.tar.gz"
      sha256 "a1a67a0dc9c33a72832db0429186400f182eabad696f72be721b4ed92310a33a"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.2.0/homebutler_1.2.0_linux_amd64.tar.gz"
      sha256 "a0efbb060528b7e60452c58d7c9b744aedad7fc5447fcb4451caa78951408c7f"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
