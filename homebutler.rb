class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.16.1/homebutler_0.16.1_darwin_arm64.tar.gz"
      sha256 "94297de0f9c2cbeaddb305dd3427209a5a5b7586a95670bce4117c0477c2aec8"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.16.1/homebutler_0.16.1_darwin_amd64.tar.gz"
      sha256 "5f0fb39fac1a17ee1e154b7a3561aaef9bd776c11bef82f186560fe95c5d4c2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.16.1/homebutler_0.16.1_linux_arm64.tar.gz"
      sha256 "2af34df5c69afe4349f93d5a9cf71b7e44e3c49d9ed3be908e42ef3ab0bc4b88"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.16.1/homebutler_0.16.1_linux_amd64.tar.gz"
      sha256 "bcc0dc4221de677bdf111de795328047a0aacf085dbd516442454c97ea1ca2ab"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
