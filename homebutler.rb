class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.9.0/homebutler_0.9.0_darwin_arm64.tar.gz"
      sha256 "985cf39decfabe054c3474bf9ce4ac4ffcc67b129f8be67e8e7f1e5d709e7ca7"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.9.0/homebutler_0.9.0_darwin_amd64.tar.gz"
      sha256 "d494e4f1ad9953de15f4d6d86a0500b98af3db44f75fa53850f0fc7893f2de9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.9.0/homebutler_0.9.0_linux_arm64.tar.gz"
      sha256 "e813b2f899fd02d0c5bf5ffe10d942c744ad1bb6efdcdc4a8f7e658b0cb905ab"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.9.0/homebutler_0.9.0_linux_amd64.tar.gz"
      sha256 "76f52ec134aed8bf929165f40a070bd31b8fb96469e7c9032848607d9b0f6ab7"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
