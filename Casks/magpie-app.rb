cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2442"
  sha256 arm:   "a4d6bc84d893af5d464656752062772d1d25de87473273918fceadb45e2e1540",
         intel: "8df8498870060c28355ff5c34942d81eb380d290ce83d9c18ea28186ee849ca4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
