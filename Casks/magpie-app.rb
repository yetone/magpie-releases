cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4339"
  sha256 arm:   "6ae69f10594621c7c9b9c593fb7c712edb9e84d04e0977bdab5c5a269d9755c8",
         intel: "fbd3522463edf269296236cf2c043a34a5395e133170388b9ac2a9dfd9e2911b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
