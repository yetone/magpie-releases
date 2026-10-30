cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2284"
  sha256 arm:   "f9b582d70b97f197b8ab6548929dfd6b8e221d6adbe833638469631c04e93177",
         intel: "100a5aa1ab726f7bce08b3c90a54291c885df4f811c8a9b33b1eb787f1e745ce"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
