class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.11.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.11.2/homebutler_0.11.2_darwin_arm64.tar.gz"
      sha256 "96116bff40bdf0f4adae5e7dc8f630ed6b86c3d0673a5631edb5c69d545a7b13"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.11.2/homebutler_0.11.2_darwin_amd64.tar.gz"
      sha256 "3476ec61ab0902dcdac659a90785489fde61f0dfe9706607890cd6c1b11beeb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.11.2/homebutler_0.11.2_linux_arm64.tar.gz"
      sha256 "d87b6e3c1d156fbbd3151554458e59431a9773d3da8170c56780f45f90d3d902"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.11.2/homebutler_0.11.2_linux_amd64.tar.gz"
      sha256 "c8b89a4486c625413fec2ebbeb006b4e9e20f9946e96d37ac60e42653d5edf7b"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
