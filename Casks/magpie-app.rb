cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3819"
  sha256 arm:   "8dcaed7d3cb1782db126315e922d7c68d106cd8d6c1a18fd8c1a584536a744cf",
         intel: "70e18c7538706cfef0113099dd7ca659e80044da57054ec962e19d3445f1b9f1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
