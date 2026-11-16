cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4304"
  sha256 arm:   "143fcfcfa1c9f7c6e8e1490c805667ff3c604e406550445658b135d1b01b3bdc",
         intel: "ebe1003a86c3eadb6d0e1a1d169dc3dfad17b7fd61ae02cebbf37343a89903e8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
