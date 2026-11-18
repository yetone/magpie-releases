cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4460"
  sha256 arm:   "6f496c898d764883d20d7d3ad355442ffdcb08ae109acdb4298e99f902fe4412",
         intel: "b964b01ad26d323e156c7e384f171eae666d1d307daadd1736b11e5c1fabf7b7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
