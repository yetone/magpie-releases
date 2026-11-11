cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3771"
  sha256 arm:   "e628af1b87963534d945e9601efc23841049437be35b694199682ddec7711df7",
         intel: "0e2234a2b8d210f9a278a838afde232231c07c0cf0d464c9425bf4664abc2520"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
