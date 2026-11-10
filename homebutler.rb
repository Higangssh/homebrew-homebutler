class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.7.0/homebutler_1.7.0_darwin_arm64.tar.gz"
      sha256 "e9324df6e2e663448ff836e83c42141de33f0bd90de1a831ab6d05054d04023a"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.7.0/homebutler_1.7.0_darwin_amd64.tar.gz"
      sha256 "caceb1afc2cf5bd4420f1c3f483fcee741ce471343ffe77fbdd8d04a27eff873"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.7.0/homebutler_1.7.0_linux_arm64.tar.gz"
      sha256 "684c215fe6224fc70acc607615d3147459b0a8c0402f070ee3ef4cb515046588"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.7.0/homebutler_1.7.0_linux_amd64.tar.gz"
      sha256 "7bd60e85cb47545d195f9f1310ac8990f1d481c78c970f978a9dacc9dc254902"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
