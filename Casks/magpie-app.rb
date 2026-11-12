cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3935"
  sha256 arm:   "2ba76eda041492cd04a0fbdf993438fe81c2f102b4a2c5f2ca1cba762b2f7f1b",
         intel: "71fba7b33fbf6e864443a7b3cc942e4e34d44c467befe510884224a046240a42"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
