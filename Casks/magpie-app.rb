cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2004"
  sha256 arm:   "51553667da2d66a7f389ca720ab52ab99129ba3cf838e7c73bd53a1a5f48da45",
         intel: "c1fe0b87ecb78137796754ae771027f940940807080d68cf5b3ce5c5789057e1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
