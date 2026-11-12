cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3878"
  sha256 arm:   "b7a802e206adcb2d3bdc7aac378e6e28fd0a4cc844d23f44d983e63af2a5908a",
         intel: "cee3cf2765c9a5c1edf6f65765f5a169e91c75903e1c410f7488bbf999a632dd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
