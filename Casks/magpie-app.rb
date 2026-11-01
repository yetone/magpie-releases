cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2658"
  sha256 arm:   "cd073260a2dea854f139939acbb4205debf931eb0f68d7e624c6bd61e82cedae",
         intel: "caf6ad59a07db99553344fbd45a0d8b1215eb079c5670f04f9f19fca07629384"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
