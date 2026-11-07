cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3290"
  sha256 arm:   "442ed1d45b41df424e9cdc6ef846411021807e9ddf53647c11a3ebdb293b5ca7",
         intel: "22228665846733bca416e503eeebbfee24e92d52d44a94c23a33713c650e5a60"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
