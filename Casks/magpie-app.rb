cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2340"
  sha256 arm:   "05e24f2923a7422bd358452e6736d14d53b0d00eee3550b9633242f943a8e650",
         intel: "27e96927c6baaa9c2f1425b4c8cf31065b024ff64d51577cd863f6f81f03b943"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
