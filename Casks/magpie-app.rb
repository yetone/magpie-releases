cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4865"
  sha256 arm:   "af3daa6424b1c1b3ad5b30639b22b462aea6fe53e83994d3f593e645af9a64bf",
         intel: "8a2691ff93e9853ecedf354d099abf89eb0f7904bea90160e6359f79a6f86a65"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
