cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4993"
  sha256 arm:   "d66b290c45f79652836be02a18c21fab93768cf86f3fff141778efbaa92ca794",
         intel: "c6f11268ab0ac562a97fbd73bfc055f4005c7e9fcd18d070a8925d95306505a4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
