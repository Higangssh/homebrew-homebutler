class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.41.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.41.0/homebutler_0.41.0_darwin_arm64.tar.gz"
      sha256 "616453c8517da58d2c85a02ee1c20358684dbed4426d602370ae549e21ef92e8"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.41.0/homebutler_0.41.0_darwin_amd64.tar.gz"
      sha256 "976363f14c04fb6ec7550d8e69e2d702307243006e9ec892f770381b1e9e29c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.41.0/homebutler_0.41.0_linux_arm64.tar.gz"
      sha256 "d929d173850ae94d4096416c7800daa1866c13a0bf8dd93ddbacc1a66e5d72c6"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.41.0/homebutler_0.41.0_linux_amd64.tar.gz"
      sha256 "58d9ba747bc11390df6aed56af951685b47871a383fc46796dff64fca25d1d61"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
