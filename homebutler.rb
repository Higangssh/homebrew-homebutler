class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.2.0/homebutler_0.2.0_darwin_arm64.tar.gz"
      sha256 "53db176c65711c26afb4fc94318dad7ca69276ebcffe9933a2d0b833ccc73694"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.2.0/homebutler_0.2.0_darwin_amd64.tar.gz"
      sha256 "3544d5f4d9f4ec725c01dcef352aceeeaf26e7c9e3239dc29d162ecfa69758b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.2.0/homebutler_0.2.0_linux_arm64.tar.gz"
      sha256 "b3f29f7fafd14a7f909fa8118fba05f4aa0ee1a647aa60d9613215517deae135"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.2.0/homebutler_0.2.0_linux_amd64.tar.gz"
      sha256 "9499cad90564ae849be60c5781a5e299dd57cbcf69884f344072560d211300ae"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
