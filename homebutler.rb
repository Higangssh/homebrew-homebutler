class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.10.2/homebutler_0.10.2_darwin_arm64.tar.gz"
      sha256 "90cf091a8ffa18fe94bbf0acdcd98b2cf44c7ada4321da0f47315f1a3b7d7bd8"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.10.2/homebutler_0.10.2_darwin_amd64.tar.gz"
      sha256 "37a8e107e81aecc0d6becd558c904009a2a400cd8af1f007ac16f9d4ee4f6c1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.10.2/homebutler_0.10.2_linux_arm64.tar.gz"
      sha256 "0ea24d04f3c4fb13ea86b21e34ea49f1f732533079d80ae52a560958d355e2a5"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.10.2/homebutler_0.10.2_linux_amd64.tar.gz"
      sha256 "6c5e7f9143e3b418e798418213816e693d55b88360d1d843631aa5fa80e65119"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
