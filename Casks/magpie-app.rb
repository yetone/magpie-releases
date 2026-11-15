cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4257"
  sha256 arm:   "630b53c4d6a1c3a1398073adc1a85b9fb597dbd5ed9f9aa8f8285297907976f3",
         intel: "55676c567d7266b9d20c38f08f218efba838d3182009d57e901380ff0c0f0a67"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
