cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1951"
  sha256 arm:   "7d40753d4da495767ad9485559911d60b584d92de5b4e0b104358e5dcaed59e6",
         intel: "a4da4cff5a9ce1705c1a01d15493d2ea67f45bfe63b545f36276bb4b17746e5d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
