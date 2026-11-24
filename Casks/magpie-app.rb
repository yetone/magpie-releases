cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4749"
  sha256 arm:   "70f5c4809dad4c90526b29df9bf798d323bd91d23d3943e001266b911e3e303f",
         intel: "1a6789ee4e1a38896baec3ec917f1877674ee89de84c4abea271446fbb768c2c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
