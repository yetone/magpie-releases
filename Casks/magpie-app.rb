cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4471"
  sha256 arm:   "7bed378b986d66a5488c0d0d9130455f0a06e81ffb97e27ee1bc6852715ca506",
         intel: "3aceafdfa38ff3fdc13d59f72066aebcbfd4f08e81157753015d4a7f96b56cf5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
