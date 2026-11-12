cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3916"
  sha256 arm:   "cac919d15db76e8bfbd6fc3c4efab37e8befd3c49411d6feb662215ea6268f1e",
         intel: "dcb11df27ce5dcd550ddbd902d9bd9b1697213f77e3a580398e5ef214b302d9c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
