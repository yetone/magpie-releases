cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2991"
  sha256 arm:   "3887c50561408328e0a87653457b49e30cc05c51a6754fe5ec2003e57d155e50",
         intel: "88ceaf38f3450e6d27f17909b91a7bb9de9a329393200ff812356a06b62636de"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
