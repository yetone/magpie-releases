cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2954"
  sha256 arm:   "5b24b253eeff696f2a26ec0d96ad158770f1339e78feddce317c4874132d219b",
         intel: "73648bf580d49b89ee987597b035cfa69510803ffbf5d188097e35619a767081"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
