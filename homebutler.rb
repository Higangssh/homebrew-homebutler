class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.22.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.22.1/homebutler_0.22.1_darwin_arm64.tar.gz"
      sha256 "47c6453581aad746a52fdba3e32bc6c9141a1bbf2501fbd9eb34600f65a94bff"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.22.1/homebutler_0.22.1_darwin_amd64.tar.gz"
      sha256 "3de7dfb31990a55d1d7c2f1c0dfb78776bcf50e21e6caae9ac91f976c6b4e256"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.22.1/homebutler_0.22.1_linux_arm64.tar.gz"
      sha256 "80bb42fb92def50372e288b88e6ab8d0faf0e5884fb27afa6a59ec4f5f8d39dc"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.22.1/homebutler_0.22.1_linux_amd64.tar.gz"
      sha256 "8055e14928d47d957f1c232c88c11d0b3153fa9651d206b288b17569331bfaaa"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
