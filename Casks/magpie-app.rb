cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4692"
  sha256 arm:   "5028fbd7d3794c259ceb9d9d6a88b9b92beadbf5e37a1768ff5d7edfe2c04672",
         intel: "8a0ab9d75b06c9506a121433521ed1dbc462fbc21b7b0f83e127f22b0f14c475"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
