class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.40.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.40.0/homebutler_0.40.0_darwin_arm64.tar.gz"
      sha256 "6b86fcbac022827fddfb38d7d36d978e2a5c90ab87886756b4828251c9182fb3"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.40.0/homebutler_0.40.0_darwin_amd64.tar.gz"
      sha256 "b27cf3f18543a1a56370282d586ff64f9ba70559f4d331316851622025834a41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.40.0/homebutler_0.40.0_linux_arm64.tar.gz"
      sha256 "ac524e89eeb6ed81873192e1f29a68dad4b855c39d2a9d5a9c84635002eac6bb"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.40.0/homebutler_0.40.0_linux_amd64.tar.gz"
      sha256 "abf111e8a9263ef562f6c5e9767079ba620209c7561bb40f65fbd759fba78faf"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
