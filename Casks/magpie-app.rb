cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2599"
  sha256 arm:   "95e74d5ec77575ab164882fba86ba3e788d2312f3a5760834795e0cee365786b",
         intel: "a21c199281ced82e2422755ceeb67ba75835ae84c4e4c2d5b97286826ad8db46"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
