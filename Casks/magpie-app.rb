cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4360"
  sha256 arm:   "8721ca7708547a801109dda8c4dcb88e55f523408caaf70d312943e930fde69e",
         intel: "58e0f108e094fccc1344245be41d974e1bd43727e419ba5359e489e406f30c66"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
