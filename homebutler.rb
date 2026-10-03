class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.41.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.41.2/homebutler_0.41.2_darwin_arm64.tar.gz"
      sha256 "2393a21a4c32e354b5eba27d56cf73fe5012e2f76268c7b81a14e121fec6e561"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.41.2/homebutler_0.41.2_darwin_amd64.tar.gz"
      sha256 "c867f576022cc8004731042988940557a65ef7c28d45883ba0edc01f3e29c7ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.41.2/homebutler_0.41.2_linux_arm64.tar.gz"
      sha256 "1b57ded01fc9e3f867a0477555d5807f0466cb292c9947701cbde2bacdc118df"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.41.2/homebutler_0.41.2_linux_amd64.tar.gz"
      sha256 "0b8fc9d53b5c858960a4d0da5dc3d9d5bbf39ebb5474c312756a95fffa7f1b6c"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
