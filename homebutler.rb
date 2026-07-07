class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.19.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.19.1/homebutler_0.19.1_darwin_arm64.tar.gz"
      sha256 "1f7552165c12536f322268da39d1013b1e3e6c458bcecfc03975eee9c65636a9"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.19.1/homebutler_0.19.1_darwin_amd64.tar.gz"
      sha256 "e5b4dcc992e2962d0e3b9cf35d2a35d05b6a74f21a4b1da48e1960ff955ddb0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.19.1/homebutler_0.19.1_linux_arm64.tar.gz"
      sha256 "fb56f1769e3f7f1a2bebc325eb3b008e494eb7ad529cc9b4a35dd167e7309b93"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.19.1/homebutler_0.19.1_linux_amd64.tar.gz"
      sha256 "874fc6a5d20b5a33aa86d6d3db8d1ca1009f5b63815523912ff07ed6b68a33b0"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
