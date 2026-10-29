cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2069"
  sha256 arm:   "3b771ee3946ab399ab5bcf81723850e652e2a8326ab50a46dd5219da8ffcadad",
         intel: "e38a50e0ae91a6041cee554844aa822df99addd74293258f96f3236c1cd9b0bd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
