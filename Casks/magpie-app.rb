cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3106"
  sha256 arm:   "658e55b69c4bbd3e66b1c9ac5e23e6f79c384e7846459745afef2a8217e05196",
         intel: "a637d0199359629def40f0b7ac6d9c1860f45a5733eb78a4423b17c116c242d9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
