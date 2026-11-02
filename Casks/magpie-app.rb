cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2728"
  sha256 arm:   "2c6b541c93d98182d6360c1f37b58313825d6114b7b56f6599d3f2399767d087",
         intel: "3d81912de226a9a207699edc9ce40eb748d1d0f565c0b744ffc38a84581f79c7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
