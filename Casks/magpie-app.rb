cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4767"
  sha256 arm:   "1aa96557839b21490d1709e54c961dc46d345af79896877e84945e2925cf6e2c",
         intel: "5dea935ec39db6b5b2539d70d937fb2e8944779b345e9190023076fc4e1400ed"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
