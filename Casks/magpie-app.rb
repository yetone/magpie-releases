cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2789"
  sha256 arm:   "7db696ef81f6f39569bacbb3e7d11c3897d465a5cdf9d6831c49e9c646ce63c1",
         intel: "45cda495a8bc24f5824b5d6cd8f3b3cd3707fc5afd231da06eb9ef63c575fd4e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
