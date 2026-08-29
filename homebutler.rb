class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.23.0/homebutler_0.23.0_darwin_arm64.tar.gz"
      sha256 "4f6064261bf5d90401136151f13e2caf35a4a7af45bb9ab50ea67a6f546ca4e7"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.23.0/homebutler_0.23.0_darwin_amd64.tar.gz"
      sha256 "cf37d137bbddd86c484460657ff40e83d385f048fc920b2f3914ba0a98fac053"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.23.0/homebutler_0.23.0_linux_arm64.tar.gz"
      sha256 "f2043eb90f2c0275b9ceea070720fbc3e075acb721ae683a1a14eb450706f6a2"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.23.0/homebutler_0.23.0_linux_amd64.tar.gz"
      sha256 "f4e39c853cc84787e75f29924a8a0a17a46c6baa9655fd5e62681429c1f53624"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
