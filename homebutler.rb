class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.5.0/homebutler_0.5.0_darwin_arm64.tar.gz"
      sha256 "e3ee4362f9ebb22a92adf574ac0e0991f23a0faf7c6830ac30511373f4e5cd7b"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.5.0/homebutler_0.5.0_darwin_amd64.tar.gz"
      sha256 "422ac6618d61730e4405b9a74dfe9f66f478f68321f0ab93295aa214db296a17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.5.0/homebutler_0.5.0_linux_arm64.tar.gz"
      sha256 "2655eac2bccf719e8d3efd3f06be5c81a303dfca6c49e85be5d29dd662bec7b5"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.5.0/homebutler_0.5.0_linux_amd64.tar.gz"
      sha256 "462e3620a3270c5e0dbebde2dcdc77d53e5bb1e7349ac408ef410364cc3e3220"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
