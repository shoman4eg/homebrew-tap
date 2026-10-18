class DowelCraft < Formula
  desc "Cabinet furniture design: parts, sheet cutting, drilling, drawings"
  homepage "https://github.com/shoman4eg/dowelcraft"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shoman4eg/dowelcraft/releases/download/v0.1.0/dowel-craft-macos-arm64.tar.gz"
      sha256 "397efeac01cc1e90ebafc1312d0d70e3ddd98b7754208ad1196a3cecee9d98b3"
    end
    on_intel do
      url "https://github.com/shoman4eg/dowelcraft/releases/download/v0.1.0/dowel-craft-macos-x86_64.tar.gz"
      sha256 "120a8b729ff72d55dfff553c6e15e9c7dbe7b97669424ae41cd2e76cfa5ff5b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shoman4eg/dowelcraft/releases/download/v0.1.0/dowel-craft-linux-x86_64.tar.gz"
      sha256 "fb05ee5e9199bc803cc12349de637626d018820fa12df4620e9928c77ffd401d"
    end
  end

  def install
    bin.install "dowel-craft-gui", "dowel-craft", "dowel-craft-mcp"
  end

  test do
    assert_match "dowel-craft", shell_output("#{bin}/dowel-craft 2>&1", 1)
  end
end
