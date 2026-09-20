class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.36.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.36.1/homebutler_0.36.1_darwin_arm64.tar.gz"
      sha256 "139437bb99ea88ce791da151202faa34cfe23263c58bc84f33c80ba29848ff83"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.36.1/homebutler_0.36.1_darwin_amd64.tar.gz"
      sha256 "f2f679d20a44a04967a12c836a3d7634d3459cb481e9f0c4e55031062a6d70e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.36.1/homebutler_0.36.1_linux_arm64.tar.gz"
      sha256 "b6ec612c9baffa9a8169ef0739c55266c091c0dc04ba3bf5b17b276e3be0bc63"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.36.1/homebutler_0.36.1_linux_amd64.tar.gz"
      sha256 "ce495763c769aa96fa5cd6676aa988bfd34d81daaa493284657f7724c022320a"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
