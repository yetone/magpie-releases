cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3141"
  sha256 arm:   "c6f97defbebc00f6a809352004be1a5dfda23d2c56c7218a1b454d15ac6e349d",
         intel: "77f55f1482c0f55a1f0e5ff8bd451ed68e6d18d59107033f554b7be50cb4060f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
