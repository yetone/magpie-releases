cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4509"
  sha256 arm:   "91d9ddc1466df10016f06a0a13db3cfbd4c69d4f7ce6e69323ca51b00b5f1075",
         intel: "88de8640c3211be881935a23a3592ca8ec3ac00de8b61ef8414c951d34aacd17"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
