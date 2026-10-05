cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1006"
  sha256 arm:   "93cabeef635fd80d54fa77fc30837abbcce2c6f6608c9b9d89bce4b09d124a15",
         intel: "e9858b3f50fb825cccbfb35b268a7cc67226580f73e0ad81518651f9e6772e60"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
