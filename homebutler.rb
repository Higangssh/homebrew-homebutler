class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.6.0/homebutler_1.6.0_darwin_arm64.tar.gz"
      sha256 "34ae56ee59cb00bc0a5da89ff364e0b7356548323430a8ec99cb7d1eebfab9be"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.6.0/homebutler_1.6.0_darwin_amd64.tar.gz"
      sha256 "3fe0be7952e18d800f8d7ee376c5945fd92c6c7616463d85a020722f505d56da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.6.0/homebutler_1.6.0_linux_arm64.tar.gz"
      sha256 "35b1f99b1c7dbf0e6bec9af554fc087cdcebe3225b55462f4eebd4d01a945398"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.6.0/homebutler_1.6.0_linux_amd64.tar.gz"
      sha256 "6831c9d69a82a924435db78ca4e35ad0945e48adbe17eab00546dd72325e63f5"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
