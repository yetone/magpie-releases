cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4981"
  sha256 arm:   "70870f76663be6fa1009f31b2464aac275e685062a3de3806279b718f32dbb0e",
         intel: "bf4830b2e2c2ac971d4b24dfaf7cd6b542a7d0ee782af198d2e515b6212c45fc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
