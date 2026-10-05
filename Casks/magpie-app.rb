cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1020"
  sha256 arm:   "e0fb2a6177424252ba0902858d8cc0ab2c99aad07546db9d9438a44a5a698f99",
         intel: "8c8305884e427eb78a710cf035c2e8a469bd45e98205222db971d8fbf6e36cf0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
