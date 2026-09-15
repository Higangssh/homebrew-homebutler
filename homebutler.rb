class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.34.0/homebutler_0.34.0_darwin_arm64.tar.gz"
      sha256 "eca9a606d31a9dd3748fb489206a996d41e43c48ec1e9d22ae2f3916928c0833"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.34.0/homebutler_0.34.0_darwin_amd64.tar.gz"
      sha256 "75510cb40cdbb602acf304c37d42b85dd2457dac905cdffabca10a78fbee86a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.34.0/homebutler_0.34.0_linux_arm64.tar.gz"
      sha256 "799729fccdad30897f6c01d3fb4610da28ed346c4c700b2076901dde67c28692"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.34.0/homebutler_0.34.0_linux_amd64.tar.gz"
      sha256 "1714085c5152953eb2236d6d5ceb869b18df18e55ed115038ec1b65ea9cc27ee"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
