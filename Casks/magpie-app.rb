cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2087"
  sha256 arm:   "14fb1c47c707ec7d8f4df615bd121792a7fab59424aa0a752ee3f93cc5276a81",
         intel: "791218b4f698410ca8dd88e8b5a7830aef4a91f4a11b877a6adfa21682e475ae"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
