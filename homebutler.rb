class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.8.0/homebutler_0.8.0_darwin_arm64.tar.gz"
      sha256 "ce309e0ec620849d3fc92e22f068f07ab85db794b17ab5b03796ccea00740dd9"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.8.0/homebutler_0.8.0_darwin_amd64.tar.gz"
      sha256 "cc0aec5f8f14eb8295fc9dda62902d77a5a475d681a9003ae0c0961a05524abd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.8.0/homebutler_0.8.0_linux_arm64.tar.gz"
      sha256 "5825aefd1e2c2562c30bf9d93bddb24ca538a2d79eff3609cb8170d7bd5fd79d"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.8.0/homebutler_0.8.0_linux_amd64.tar.gz"
      sha256 "b02b73ba95bf8beef3a8fbcbcc4d390c1233138507b91616e1ce6090107dff4b"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
