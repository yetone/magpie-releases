cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3762"
  sha256 arm:   "5b1a98445fe658de907a5e8e7796f8b778add82bfa9628dedf6084d8133aab0c",
         intel: "3579fc52e10735368e4a40717a5baf982b0ca1b3201da4910cfa6c875da48154"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
