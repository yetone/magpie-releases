cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3686"
  sha256 arm:   "8e7c17c27a33b18e57cd0de4b713af187dc5b58b19ecc1035add7d0d6eadb973",
         intel: "9dcd3511b3f48e2cf14804b6d6892a6562f3d54e337651874563a13a720ef7b3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
