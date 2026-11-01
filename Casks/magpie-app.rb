cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2587"
  sha256 arm:   "255edf83ac16201ff25fbd146d51ac3c643b346d44246a1259277da1eb0bcc11",
         intel: "cda2b9fe5b7d4cf64b5fef76eb07f4f1f19ea6d571b16c72ac27a9fa838f7430"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
