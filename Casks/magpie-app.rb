cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3308"
  sha256 arm:   "ebd90cd56fcf2dcd25bed40ff0f6a7357dba6612da5ba0871170d0f12dca65b7",
         intel: "37fdeaa3355beadf77a8e9e47092e8e37b2914132243cb1fb481ea864711acfb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
