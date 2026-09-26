cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.129"
  sha256 arm:   "0541f90bcaeccaf9df871e25364e14454909b1ba39fcab47833d8dc10697c431",
         intel: "16ed21d6c25f207a25f20d344e1323926b4b4aa4956ee0be9ad2be726c4e49b0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
