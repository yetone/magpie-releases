cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2574"
  sha256 arm:   "fbcc8f1b305e922ed82bf0f6db3a4a54311ffb512bf0ef5d31ae10b3f5779614",
         intel: "1837cf207d4d5383a4ca6daf05985ac2ab91aefa8a4aaab555ffae1758077a6c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
