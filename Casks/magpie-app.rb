cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4799"
  sha256 arm:   "9beabec1f9626ab80be20c8c08f761645c041d7a95af29fe89f5d13715467503",
         intel: "50b2680367c94fbf882249b369441e81ff3747ee276754b03d65166e3e360dbf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
