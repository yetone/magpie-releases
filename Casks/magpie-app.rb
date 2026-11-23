cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4695"
  sha256 arm:   "17166d60c7a573822c7d45357f91fc4dc6990e067e0cfce16ca448f28c049fb0",
         intel: "c38c132af5a065ba6fc419e102983ae422269c17c3c30c83fd8e0d45ffdb0d7b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
