cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2145"
  sha256 arm:   "4753551bb5d235836baedda68328a06505485ca7b1c0eb5795b0d43702523366",
         intel: "129f37d89de9af416b2878b36dfa644723ed22b01c221e44f0d56f2ba29cf978"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
