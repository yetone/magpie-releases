cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4226"
  sha256 arm:   "bdf60debc539331bf60da915429f936a3402bc69b9354af0bbf9d3958bb995e6",
         intel: "edb2f05c10a468f528d780b0fd3bed9f1e6d514283a77f71049717db1800bb15"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
