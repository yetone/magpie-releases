cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3472"
  sha256 arm:   "da32299a1cbd84fa7a2c83ac3c08835e379e1cf094b9017e1a89ab1c089d8499",
         intel: "eb243521d8f54dd022c45b1e2b2c85182718032c6109571993dbcb6285fd5290"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
