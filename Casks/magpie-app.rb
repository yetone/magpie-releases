cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4233"
  sha256 arm:   "f401e4424d730fb308309cb5eec43d1620fa584c75ad782776dc4b0f46a1a10c",
         intel: "536a148c76654ff34f11b94405b7d5e3d2155afe0eea227854e323aeb513ba79"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
