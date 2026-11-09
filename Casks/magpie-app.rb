cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3439"
  sha256 arm:   "b1e3f0b5e29ed1c21a27506d0357d3ad738ebe4df0d6a37df0b6e008c101d601",
         intel: "f4bb2c72491478d2660d760f753a4d923f4e4adc0c5d2e64aef351fbf9a52267"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
