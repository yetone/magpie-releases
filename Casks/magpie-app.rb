cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4146"
  sha256 arm:   "1b4ca68633cd48938316aa090d4f916715e5e8e30680ebd13796744292be68de",
         intel: "49d489dc5f97c5091a918172533dba2fb904c89daa0f957f5cb6e48b85499e50"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
