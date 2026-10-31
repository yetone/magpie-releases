cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2311"
  sha256 arm:   "4fc2f7c218df7beeb4df2ec3859f8c281efe4d78eff4282522cb5f2f29a45617",
         intel: "72f7f44df3548fd6f61ebe8c0a8aacccf6e33e48d9bb92bc83550cfa8e000465"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
