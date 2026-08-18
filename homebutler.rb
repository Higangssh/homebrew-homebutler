class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.20.0/homebutler_0.20.0_darwin_arm64.tar.gz"
      sha256 "124aed22611a2aa0ffc34b73a9ae8bc7792bf2a518f5b94e93207e20eedba9ac"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.20.0/homebutler_0.20.0_darwin_amd64.tar.gz"
      sha256 "5f273a73baa736b4d9e877b60927253889c4d48d417f9ecc377819dfaf0ca5d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.20.0/homebutler_0.20.0_linux_arm64.tar.gz"
      sha256 "b82f100f959d99e7bafc1d6694facdce31cee58b6242e30bebb047ae64bd3993"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.20.0/homebutler_0.20.0_linux_amd64.tar.gz"
      sha256 "a7556dcf232fbf3eb1e647d32b7d073a411991857b8d07937b1eba9cbfeb0df9"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
