cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4346"
  sha256 arm:   "59c34e0db33725e7c4165aa49b83e972d787f6050d324214e3643d499689ac93",
         intel: "dc1d3b71c1ab8bb0a977a6d667f25610435638e0a8d0d3f7e43ec1c6d47bb325"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
