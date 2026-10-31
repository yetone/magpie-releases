cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2299"
  sha256 arm:   "8f596d58af26c1b44f0bb4c89bd3fde8f041b76c87126b6d08d0b2fb4fb260e9",
         intel: "9c61b53554df1db0acf1435a9083bd06b8f68f0fe3bb771fd82ea746ea6da4b7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
