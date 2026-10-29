class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.4.0/homebutler_1.4.0_darwin_arm64.tar.gz"
      sha256 "9804a9aa1fadbd9286384afdebb6ec88ed1520ccb3a5f8cb1cc0fd0ec51ca8f1"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.4.0/homebutler_1.4.0_darwin_amd64.tar.gz"
      sha256 "90e0cc22f79063036c031e8ea6e3a208e4e4acb598b5715d6b5d7e2fb88a31e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.4.0/homebutler_1.4.0_linux_arm64.tar.gz"
      sha256 "e04a774004498f1972012604ea4b3dd30a2d9c75c5acc2e902c745287c91794f"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.4.0/homebutler_1.4.0_linux_amd64.tar.gz"
      sha256 "3b28d58dc9289dcd7ded33246a7d4e7af363cf362b6943bce959c34bc5df95ad"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
