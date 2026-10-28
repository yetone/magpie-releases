cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1874"
  sha256 arm:   "77ec8e0b3da23ff9cc3faaf632c38ace8f5e9ece7b988e40c88c11eeb7ee35ba",
         intel: "3652daf0a5ca332ed8caf04bbb564a6ad3562aef64fedd4d7c1d3119cda67cf3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
