class Homebutler < Formula
  desc "Homelab butler in a single binary — manage servers from chat"
  homepage "https://github.com/Higangssh/homebutler"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.25.0/homebutler_0.25.0_darwin_arm64.tar.gz"
      sha256 "897630c825cb1093df24e92f0610982f13681797b2f0f54083da5872498eb322"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.25.0/homebutler_0.25.0_darwin_amd64.tar.gz"
      sha256 "875b6463c98788a3c316591b64a0e9a88357c510c65deb9462a764b23442d56e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.25.0/homebutler_0.25.0_linux_arm64.tar.gz"
      sha256 "e0ca4058c461f289b39c6fa7893be9fccdc7ea4908a23d52ee9089ab6a894bd8"
    end
    on_intel do
      url "https://github.com/Higangssh/homebutler/releases/download/v0.25.0/homebutler_0.25.0_linux_amd64.tar.gz"
      sha256 "12944098cd65ae23cfeb23b1185404556cfc985e96e45a0ce6727a97423bb45f"
    end
  end

  def install
    bin.install "homebutler"
  end

  test do
    assert_match "homebutler", shell_output("#{bin}/homebutler version")
  end
end
