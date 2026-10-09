cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1137"
  sha256 arm:   "ac5af9782dd855ac82ed54c53ca87b5dba4ceaedcdfb723ce4d333d65fbd8563",
         intel: "7dbd664205d99be513b6a43f9ec1c92e6f9ac9e12193567284f6b3b03d7d31a4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
