cask "dowel-craft-app" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.0"
  sha256 arm:   "08d926c58a91a84a7a036efa495bbeba380accdca21a926e970b2bd20ea2a21d",
         intel: "9a68431752d0ab6a6137ce7521a6155c6bb13a1d7a9c6f65ee1fa584bdea6339"

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
