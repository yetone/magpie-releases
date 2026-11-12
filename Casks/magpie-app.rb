cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3864"
  sha256 arm:   "4d7e61f0655ca254679b6e2f61481d3edbb8bc1d71fa486d157e3ddce67637d2",
         intel: "080edb4625b8eda60350bc78932e782f8607354c7c050498becfc15cf7d5cd82"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
