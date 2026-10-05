cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1034"
  sha256 arm:   "7eb82f62fe8c450e198007c8888bf546a970536d2b00c40198ec97f8e003923c",
         intel: "87b647f9a3345a96ca42655c66979e7408d23ebb07b27362634fc4e123afa065"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
