cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2363"
  sha256 arm:   "3c14a4098526186e10ebad2a1a783b303fddff8a1dc3fef634b0f555fc3c0eed",
         intel: "0923e97bfb0a2573211efbdb986d7cd1cac5aec8160e272b9467bb6cbe34ff37"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
