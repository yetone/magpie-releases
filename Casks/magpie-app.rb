cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1147"
  sha256 arm:   "da7e1b391073d772b8598941288dbf2c9173a4e4e9147b4dd5b51e6e35981404",
         intel: "a55740e50dc77bed10c5b25d2c683e404912af41b87fb425c6b03fa74ea08247"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
