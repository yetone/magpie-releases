cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4311"
  sha256 arm:   "7190338141c0c05f54e88789fd43b280d1f6cab4fad9724dfc93aa3f233d7dcf",
         intel: "6c1864302fabe120341a089e0287540dce0d910fe58eeb82c89e58ad779a6a62"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
