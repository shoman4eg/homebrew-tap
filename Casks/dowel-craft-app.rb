cask "dowel-craft-app" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.0"
  sha256 arm:   "18c2d40f44673895ea6587911742f058430da5f11ec426c675f4d8c90b0e660a",
         intel: "1a0055a56246b72ee819f072488580d1364fb9ebe6ad9b0b6121744a3ea82e27"

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
