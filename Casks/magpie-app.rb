cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1912"
  sha256 arm:   "261da8d03cf202e7eee21fcb5279cb14195ad8793550e0696d336358a8a3d235",
         intel: "af9396b006f74f93e81a216826a64154f5149c2651fc91b6cf409b9099514012"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
