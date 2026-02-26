class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.7.0/homebutler_0.7.0_darwin_arm64.tar.gz"
      sha256 "661405afb592121052a94a2415a83da48e31a96c9ee6bf0518fa74a82f816a13"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.7.0/homebutler_0.7.0_darwin_amd64.tar.gz"
      sha256 "c7ac022868a8e7bdd17f5e6b850ff2ba81baea82ce237200e72fbddf5799553a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.7.0/homebutler_0.7.0_linux_arm64.tar.gz"
      sha256 "a02917e7b5e0115120290e2f6e9a5261fbb373605be371da5d1cc8af137401de"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.7.0/homebutler_0.7.0_linux_amd64.tar.gz"
      sha256 "51ff937a1f3ad09a9b6a371bd23e674bcbe815b0539aa68e74bd0f8d9073ffaf"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
