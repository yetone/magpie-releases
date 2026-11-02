cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2717"
  sha256 arm:   "c969eadec8855db705047bec8ceb6f45cfde634937889b03e254985a01192367",
         intel: "25fe74a46f4e1550c83219e8b5654a40a1ed40cade013381f7ea969a389f37a7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
