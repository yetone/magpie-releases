cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3781"
  sha256 arm:   "c3177aa58fb39d9f4bbabc554dbe422c99ca50d7783b7e27204b189979768e43",
         intel: "382ed0a4d4d5093fa5bdd97e7dc866118b5e75aef9c9d82dffe7b02a325f09f5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
