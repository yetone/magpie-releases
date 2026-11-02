cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2704"
  sha256 arm:   "7a02a62e5fc69074c1b19965fe0fcd3abf26217a67c22cdf2f1f7c01075175fe",
         intel: "8d45968875fe4d9be901d507edd27961888590201b80a7fb5d4d1796c7432b31"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
