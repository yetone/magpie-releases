cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2893"
  sha256 arm:   "888ac8d94af96deb2c6f3576c01ab360ea26470290ab120198c3603ff79c4a10",
         intel: "51571198a924372d22c19026d79a152a6e8cd21f0bebf5f680c35363ce2c9cd2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
