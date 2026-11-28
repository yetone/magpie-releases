cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4989"
  sha256 arm:   "f7b77f1b59677eeab70aaab237ecb280eb085b225fb8b06b7851091d391191f5",
         intel: "1f822ef2257e58b9e5b686bc9da23a058cf2c755c0def0348e101733dfd4c594"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
