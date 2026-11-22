cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4662"
  sha256 arm:   "ce64d311a9b4d3e74a0ce34d21a92c066115079116a75a297de74157ea6f34fc",
         intel: "3136561c98bee4e3bcda1dc2fb90c4b55634775f74d4eebac1832a63c55d6ab4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
