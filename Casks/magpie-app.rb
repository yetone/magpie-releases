cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2736"
  sha256 arm:   "5b2be5876805435b551fe3f96492b9669c5f5301a3df97e5c051ff2b54de9ec0",
         intel: "b2ae80bbfcb174a92fc10e9af50e34caab586c6e3d6be0ddb188149d98ed9b03"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
