cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2879"
  sha256 arm:   "34ee91340e7240167af984a1f559c3356a4bfc58673d9df00f2d559b459913e8",
         intel: "df9325ab115432fd60f0ebd28899768180dc211a64411c241c8470d06c20705e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
