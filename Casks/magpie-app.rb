cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1866"
  sha256 arm:   "e45a683502c02f26e579b6390d301fe916fc4e7fd913014748d45c854d4fbc62",
         intel: "8b0f933b5bf42390a700d14410acd76a2dc73cea3d9d14e33d8874e25735d100"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
