class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.3.0/homebutler_0.3.0_darwin_arm64.tar.gz"
      sha256 "ec3ebf52ccf77766da7e57d8e3a2bdcfdf37be16d1d35d0578a13927b41e7d89"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.3.0/homebutler_0.3.0_darwin_amd64.tar.gz"
      sha256 "965be83c924537645becc9a3400dbcb4edd85027d4d4c1a3119a619ce89ce468"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.3.0/homebutler_0.3.0_linux_arm64.tar.gz"
      sha256 "a54aa9162c8d98f34264df2247436bd37764857eb922cec8605a687849bab395"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.3.0/homebutler_0.3.0_linux_amd64.tar.gz"
      sha256 "d326253e992fc62f0ec1be8ab8b06d723d00cc8b1bf0281aa32b6898f1517809"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
