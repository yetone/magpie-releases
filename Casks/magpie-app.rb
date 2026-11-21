cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4634"
  sha256 arm:   "99364f0fc286f511edb24300a06f6d621bd915431f7703bad71c3f6fc5b46bb4",
         intel: "8ae7c243735a72cf3c5c35b0ed54afa6659629ece27a490742a3e192fd63befa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
