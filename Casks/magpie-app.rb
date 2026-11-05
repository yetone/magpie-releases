cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3038"
  sha256 arm:   "bee2f78e2156c5b5bb657cd84d14d16a34e0f0f2c184c9b74b0adf54284e8015",
         intel: "5a1a7e11d7bd1ff0433348750ab683428e45939950740767c9197d5eab62051d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
