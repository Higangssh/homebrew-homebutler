class Homebutler < Formula
  desc "Tells you what changed on your server, and only what is worth telling"
  homepage "https://github.com/Higangssh/homebutler"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.1.0/homebutler_1.1.0_darwin_arm64.tar.gz"
      sha256 "019a5c2da62cf46f201ef14cc00fe8fb03301aff24b5cced21730b8bd49acb38"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.1.0/homebutler_1.1.0_darwin_amd64.tar.gz"
      sha256 "e268d241cd05a1e6b7361dc60a6e8a7b226b291b56b95ac97cdf3aa6b3942b92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.1.0/homebutler_1.1.0_linux_arm64.tar.gz"
      sha256 "319e85f2cdf1273c8bef0f99e46a8360b037e1780fe4c1cb2ea265c1ac79ad6b"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v1.1.0/homebutler_1.1.0_linux_amd64.tar.gz"
      sha256 "ad61b2fd5a318ff87be2f6110f84b251c9457a64b8110d5b29f42adc7c1783c9"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
