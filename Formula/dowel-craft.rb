class DowelCraft < Formula
  desc "Cabinet furniture design: parts, sheet cutting, drilling, drawings"
  homepage "https://github.com/shoman4eg/dowelcraft"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shoman4eg/dowelcraft/releases/download/v0.3.0/dowel-craft-macos-arm64.tar.gz"
      sha256 "18c2d40f44673895ea6587911742f058430da5f11ec426c675f4d8c90b0e660a"
    end
    on_intel do
      url "https://github.com/shoman4eg/dowelcraft/releases/download/v0.3.0/dowel-craft-macos-x86_64.tar.gz"
      sha256 "1a0055a56246b72ee819f072488580d1364fb9ebe6ad9b0b6121744a3ea82e27"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shoman4eg/dowelcraft/releases/download/v0.3.0/dowel-craft-linux-x86_64.tar.gz"
      sha256 "f9604e8833781fda46bcf5110d0ad71d710d1ab3af12d966ce876c76ee09f8d7"
    end
  end

  def install
    bin.install "dowel-craft-gui", "dowel-craft", "dowel-craft-mcp"
  end

  test do
    assert_match "dowel-craft", shell_output("#{bin}/dowel-craft 2>&1", 1)
  end
end
