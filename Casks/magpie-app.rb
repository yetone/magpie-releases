cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4013"
  sha256 arm:   "355c3e15291b1f93938be46c5bb5635e8cf500d41f48d6d45ba175cf14fed681",
         intel: "9d61a3ebd20872fdcdcabf7fcea9367143b1ffe6648dfa90d37c5d702232d38f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
