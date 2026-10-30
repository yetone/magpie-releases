cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2136"
  sha256 arm:   "2497fc00bdf9a134be4002e8104e32eb73ffeb4e4f3dec23927439333cc0d857",
         intel: "9b1997f2c47c35bd15be2f8067b4fce6cf9e2c9c48f738bafad52f5e164a393b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
