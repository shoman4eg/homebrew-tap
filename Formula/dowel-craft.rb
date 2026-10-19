class DowelCraft < Formula
  desc "Cabinet furniture design: parts, sheet cutting, drilling, drawings"
  homepage "https://github.com/shoman4eg/dowelcraft"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shoman4eg/dowelcraft/releases/download/v0.5.0/dowel-craft-macos-arm64.tar.gz"
      sha256 "eba00bdec6f90fe2b7334e8d557e3f403bfc7d87c61ab223e9e274bc22a55b0b"
    end
    on_intel do
      url "https://github.com/shoman4eg/dowelcraft/releases/download/v0.5.0/dowel-craft-macos-x86_64.tar.gz"
      sha256 "a4a076c0ee05ee5436950074343f99befaabeea3520e4f1f1be7d9d929fc893b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shoman4eg/dowelcraft/releases/download/v0.5.0/dowel-craft-linux-x86_64.tar.gz"
      sha256 "232f0ab0fe7b06ad066b54d4d1e0813277b090432f1b556378dbf8239e35d677"
    end
  end

  def install
    bin.install "dowel-craft"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dowel-craft --version")
  end
end
