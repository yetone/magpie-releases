cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2253"
  sha256 arm:   "ddd9648f58053209d26bfc6fc6d7daa0c7ef904279523d0c36ec44b61a8145c7",
         intel: "51dd75c66aa1b523fd88ac801ea82418aa5c5fe7b2c9c6e6410aec5509a52b34"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
