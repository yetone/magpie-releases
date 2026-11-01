cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2537"
  sha256 arm:   "af02a35c90cacd4387115a3e37ddc98e221f2aa96c35221e5019d488d828af25",
         intel: "8a0af4e5af3fed4a9a272839304638734cca5b30f650c064d4c00481a668cf6e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
