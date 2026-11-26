cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4895"
  sha256 arm:   "86fb5cc86b07c0814711f1a6ca67c388b9c4514b44bcd4e355cabd1fcfb1a2e6",
         intel: "0918b0907d00f9866e0148d2bc41090f0a56744e87ecef81f1ef235c5975d286"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
