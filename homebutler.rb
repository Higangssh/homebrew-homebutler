class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.41.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.41.3/homebutler_0.41.3_darwin_arm64.tar.gz"
      sha256 "67dec64b22954df528a72898f30abb85d471e785ef240c0873093a5aa1804716"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.41.3/homebutler_0.41.3_darwin_amd64.tar.gz"
      sha256 "9b07d433e99704811466b3839685b6c37a19fe91073bd7e2eba7d3324663e359"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.41.3/homebutler_0.41.3_linux_arm64.tar.gz"
      sha256 "eb300a8beed42a31b78d3cc63c61e81c75b43f91918623b156a803b8f0984d9c"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.41.3/homebutler_0.41.3_linux_amd64.tar.gz"
      sha256 "73da03f053847701269d46dcc33ecfa0fa74fc51b336aa551b4f4ecafc5b48a4"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
