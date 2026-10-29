cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1984"
  sha256 arm:   "3d3ff8828149511bb3777aa3ca872ba91d45e3c7ad9b4a78b28b33e7458ecfad",
         intel: "4e7b0d33fe86b9e471329c4afb544fa27079fc3959d4c4bb56f8498bed8143b7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
