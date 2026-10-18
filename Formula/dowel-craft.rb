class DowelCraft < Formula
  desc "Cabinet furniture design: parts, sheet cutting, drilling, drawings"
  homepage "https://github.com/shoman4eg/dowelcraft"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shoman4eg/dowelcraft/releases/download/v0.4.0/dowel-craft-macos-arm64.tar.gz"
      sha256 "08d926c58a91a84a7a036efa495bbeba380accdca21a926e970b2bd20ea2a21d"
    end
    on_intel do
      url "https://github.com/shoman4eg/dowelcraft/releases/download/v0.4.0/dowel-craft-macos-x86_64.tar.gz"
      sha256 "9a68431752d0ab6a6137ce7521a6155c6bb13a1d7a9c6f65ee1fa584bdea6339"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shoman4eg/dowelcraft/releases/download/v0.4.0/dowel-craft-linux-x86_64.tar.gz"
      sha256 "cf00aa4d7d3194543af2e31f05a59f05f557ef1d1a7cb885e83bce6fd05402bd"
    end
  end

  def install
    bin.install "dowel-craft"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dowel-craft --version")
  end
end
