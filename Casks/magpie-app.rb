cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2829"
  sha256 arm:   "620d4f0b05e87903b7a250bd0cd68415b22db47ab7bd3568a5684545cacfbb00",
         intel: "879705888e9a9095ea59bd4aa0edd38e60727a442143c336f1f9089cfbbaa862"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
