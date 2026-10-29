cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2109"
  sha256 arm:   "75de1e6fcb2ceaa29fdbb724245a288fd599c856714716be474a7ed6fe667a1a",
         intel: "e14ff86c30afdb30938609fff70dbda835d1700deac2b136b92a8cbc1d14df74"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
