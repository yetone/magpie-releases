cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2648"
  sha256 arm:   "20d8a3b233350a74b880f1dd854d19889b834568453b9a7a1ced5b8ebde73828",
         intel: "07d88b659730cbc5f6550d636144733c51b829065723692ca6801b3c69e41258"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
