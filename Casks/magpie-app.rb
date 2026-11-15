cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4277"
  sha256 arm:   "1c184019147de3da7b89740444ff4a92eaa6b6dda98182a1f6bd8e5501fc3da9",
         intel: "87efc747b2eaad5346cb16adfd85e1a3c48d19587fe9fd25bc4d8fd1047f3bad"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
