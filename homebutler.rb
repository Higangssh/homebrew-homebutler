class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.15.0/homebutler_0.15.0_darwin_arm64.tar.gz"
      sha256 "a795ed0d1c38c9adab3319a4a26226c41a2fd447a81ad9ca8eba0523b93e974c"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.15.0/homebutler_0.15.0_darwin_amd64.tar.gz"
      sha256 "6b9b7e5cabcf28983895feca9c73772f6599c8f86894e02a7b4ae0f82bb275ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.15.0/homebutler_0.15.0_linux_arm64.tar.gz"
      sha256 "96c5bdff2a421017fa6d331e0cac50cf96e2e62f40f1227683ed9951c58bcd2f"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.15.0/homebutler_0.15.0_linux_amd64.tar.gz"
      sha256 "5d135429f9b47049fc3160ea9d12458402ccb0f9ceb526c311bb7f0846859ef5"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
