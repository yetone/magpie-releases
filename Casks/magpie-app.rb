cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4069"
  sha256 arm:   "109b73e514a9f5398e20f46948af9a86a38803feb02c12ca32ff9969e06b72f7",
         intel: "2236af630801a5f18d5ca2747af5b56e99480c266fa7b127cdcb3791bcc7350d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
