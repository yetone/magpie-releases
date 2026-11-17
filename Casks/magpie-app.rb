cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4347"
  sha256 arm:   "9d5374796917f5c8b849035df61caa5675637e8a06f9880511843218f614df03",
         intel: "26313238cab1db9315d5811f06c40472d5b4fa379732a9f2fc3e23f176bf8d26"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
