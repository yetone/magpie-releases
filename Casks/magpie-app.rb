cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4385"
  sha256 arm:   "16256f53ed4758dc682c06cbf3983ffcec7764ccdc6d3867cf409fd47589c8e8",
         intel: "b9fd5ca08e9c07bc637d207482a39f671ebf872dd660a0d8a45d6586f380dbbb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
