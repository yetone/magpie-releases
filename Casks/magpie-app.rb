cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2346"
  sha256 arm:   "1112cdd8b0d655a3a5b8780f6f7d6c6baafb0f28a601ec784a85a2c37c1663fd",
         intel: "b775367082404cdd92681c1bf3e0b6df5ee70e11d8afcd7526bb2277d1655eb6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
