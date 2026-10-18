class DowelCraft < Formula
  desc "Cabinet furniture design: parts, sheet cutting, drilling, drawings"
  homepage "https://github.com/shoman4eg/dowelcraft"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shoman4eg/dowelcraft/releases/download/v0.2.0/dowel-craft-macos-arm64.tar.gz"
      sha256 "2f9ff9a6f6cd60254be3ed8990a0d1ebb553729a986e28769f6e038adb589d36"
    end
    on_intel do
      url "https://github.com/shoman4eg/dowelcraft/releases/download/v0.2.0/dowel-craft-macos-x86_64.tar.gz"
      sha256 "757c81224dac3b905124e39d9c0357e541b156ce246b0fdade63d3c42d359d03"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shoman4eg/dowelcraft/releases/download/v0.2.0/dowel-craft-linux-x86_64.tar.gz"
      sha256 "35e92fbf378ed625e5322d57affbf27b614399c2d70f9766c36f1eba93702c6f"
    end
  end

  def install
    bin.install "dowel-craft-gui", "dowel-craft", "dowel-craft-mcp"
  end

  test do
    assert_match "dowel-craft", shell_output("#{bin}/dowel-craft 2>&1", 1)
  end
end
