cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2567"
  sha256 arm:   "7c49b049f022400c277e0ed30f6653b649d5dc5006f3ce92a85be7f2ce563044",
         intel: "94d5a21329446089818741f006134882bb39e52decea79291964fb4e69abd5da"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
