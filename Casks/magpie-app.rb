cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4155"
  sha256 arm:   "8db33a2c09627365e5d67f34c2bc0a5eb73784fcdad99bf529dfcc225c99145f",
         intel: "056354abc44f2f395dcad5688535bfd5929e74e6ab6d5b6327f3acce8ddb26d0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
