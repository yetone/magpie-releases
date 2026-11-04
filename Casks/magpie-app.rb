cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2917"
  sha256 arm:   "8e0b1471cb07e78f76c3af12899ecc68a2b7e6f53dd61759dd0e5054cb4b26ad",
         intel: "00a87f4ebfea6c00be9a73d9036f341f0a282a51ef8e1ef2f4757a6d49629d88"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
