cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2601"
  sha256 arm:   "f2ca4365ee24c50ab3110e45fdcf072262460ecf29b1199e76b47300d4c17a84",
         intel: "ad2cd87a72d24df0ca31a8d0a1c83614c3d8275c0948bcc126825a395081d7f2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
