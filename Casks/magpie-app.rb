cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4230"
  sha256 arm:   "4bc78604ca07898df6714cf9545bd6e8266bd48b10d0865298a5e67ab639cf2f",
         intel: "065660a27760d3e87bd5c439e6d00fd9cc45078bc791c36068fdfff05659c237"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
