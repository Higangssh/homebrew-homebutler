class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.10.0/homebutler_0.10.0_darwin_arm64.tar.gz"
      sha256 "a40277f44f36d1f8b6a37e279f39616a0079d6e9db21c715481c9e867643732b"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.10.0/homebutler_0.10.0_darwin_amd64.tar.gz"
      sha256 "d97b0b6131103c4acb5a83fecbda7d9220c20942dc96d4cf694da0ac2a1d5923"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.10.0/homebutler_0.10.0_linux_arm64.tar.gz"
      sha256 "7a4e49d7f476c3823ab655352c2882d8ca0d80847c56d984f5c17d5fe5919f95"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.10.0/homebutler_0.10.0_linux_amd64.tar.gz"
      sha256 "b83b98d7af5bf60648932a95001cbfb1baaae3ecc825f6137c7e02abf75816a5"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
