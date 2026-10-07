cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1099"
  sha256 arm:   "0c78e9d3066d822a654be431bf690def01a480db05d88d6f734734e282c85e7e",
         intel: "242530f4a3619b2104c3cf8db0da38a05611525d9aa18dd56f0132e6fea613a3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
