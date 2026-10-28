cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1876"
  sha256 arm:   "c19582b44290dad9eddec1ce3c1911500b76f113c44bab4f5dc0cdbf4ebc3748",
         intel: "ab1447ecdb3488a50e6c025756ca7727ddeb58fb832166dd9fd17c53b3a25a85"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
