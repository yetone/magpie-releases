cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4409"
  sha256 arm:   "5d976f68f989e7f3aaffa258ad9bff4d31cfcfdd5f14c47f3c231c4c4540635c",
         intel: "ca8f3df2525777467c8ce8f1da224192ccc352c283c3bf23f78466ad41c73733"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
