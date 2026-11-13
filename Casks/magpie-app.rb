cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4007"
  sha256 arm:   "f1b26203b2c4c074070ac089f28b6ab444a80b82899e87bdc281767e575559bd",
         intel: "cbcc6ce32646334044974e382809112ca26628933b8a1ab9d897a9668f6be125"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
