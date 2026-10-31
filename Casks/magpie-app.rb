cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2349"
  sha256 arm:   "b7f2db39504a29bb88100efd2ebd81779b1c2b27f19125114454b9bc68e678bd",
         intel: "f74c6454eefc9bdf2819328097523b148c26b438def3942807b81767f5e8b25a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
