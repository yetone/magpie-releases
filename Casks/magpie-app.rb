cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.939"
  sha256 arm:   "59e30644efc124e675320ae62b28732dd6385dd0a7db2ee9029af37f80a0e228",
         intel: "9d8f441ee4bdefc8189bcc61d6b6e72fb4aa8d51cd9a23f1117dd40f0bdaf4df"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
