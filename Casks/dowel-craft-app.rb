cask "dowel-craft-app" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.0"
  sha256 arm:   "2f9ff9a6f6cd60254be3ed8990a0d1ebb553729a986e28769f6e038adb589d36",
         intel: "757c81224dac3b905124e39d9c0357e541b156ce246b0fdade63d3c42d359d03"

  url "https://github.com/shoman4eg/dowelcraft/releases/download/v#{version}/dowel-craft-macos-#{arch}.tar.gz"
  name "Dowel Craft"
  desc "Cabinet furniture design: parts, sheet cutting, drilling, drawings"
  homepage "https://github.com/shoman4eg/dowelcraft"

  depends_on macos: ">= :big_sur"

  app "dowel-craft-macos-#{arch}/Dowel Craft.app"

  caveats <<~EOS
    Dowel Craft is not notarized by Apple yet. If macOS refuses to open it, run:
      xattr -dr com.apple.quarantine "#{appdir}/Dowel Craft.app"
  EOS
end
