cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3818"
  sha256 arm:   "dccfb9e3aea4442bf9fbd9c7dd3254c15e9ab2584d38ec8f65334b9450af8eec",
         intel: "3d209d55bcdf06bb065684c09e1099362ea6ec681cc188475bb7bdb44ca926af"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
