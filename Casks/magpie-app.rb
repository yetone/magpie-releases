cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3467"
  sha256 arm:   "e66378ed75e44717495f8aabbf2b416dc79b73beb245513041dbb3cc1932db40",
         intel: "d892764674baf72ba57ceef0b0b89d5d40a2a6b4cd924e20794ee04cd1197d51"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
