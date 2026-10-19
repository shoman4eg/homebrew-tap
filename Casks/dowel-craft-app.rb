cask "dowel-craft-app" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.0"
  sha256 arm:   "eba00bdec6f90fe2b7334e8d557e3f403bfc7d87c61ab223e9e274bc22a55b0b",
         intel: "a4a076c0ee05ee5436950074343f99befaabeea3520e4f1f1be7d9d929fc893b"

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
