cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4676"
  sha256 arm:   "5ab82bc06de640cc89ec272ac8a8e010399464684d78e4d2cb3ef253a136f0cc",
         intel: "f0f64dd61baf8da0e4f05eeb4e92cf9dec20e43bcfbbe9e07bddf69b79716325"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
