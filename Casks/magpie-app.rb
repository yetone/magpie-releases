cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4356"
  sha256 arm:   "e6f0c5ced8e2a8e3b6523a018ab5c502e9a875519374e17e43ad29e5cb75425a",
         intel: "a434be137d58f86685b6b668279526f8b90c65fd468ceb9f64b33d4b5aa65fff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
