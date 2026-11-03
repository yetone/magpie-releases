cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2775"
  sha256 arm:   "7eed677ae188f0197b9657169029b767f25433c48dc1d0c48eb9df4d4337dfbe",
         intel: "e12b1e7344c6515a139877c5bc8979f1f1e727e6ea76994da415fa363e945659"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
