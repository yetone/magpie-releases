cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4440"
  sha256 arm:   "36de477ed955290c20cf3fe26d14b1f03416ff3106d081d2f58e414a6e4d3b2f",
         intel: "dc4a7ac62b4aaddc4817f68a0281512d7f252e435929cb629ba6f503f433b9cb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
