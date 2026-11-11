cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3679"
  sha256 arm:   "cf4ce8225c03399c07e47c038d005c7347c29e9945d9c1e098dbedacf1a79c49",
         intel: "41b7fbe9d453e1227788c0e9ae0e716594ab0e28658de3c6363af827922eb7fe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
