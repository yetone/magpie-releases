cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3493"
  sha256 arm:   "3c876512c14ab247dee67916efa3779c723ab4a9b9744957d6025bf13c169084",
         intel: "9a9c29727a96a9adfc72f3fd0ec7738c3fca455ef063d155dcf3c224f941582e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
