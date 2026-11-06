cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3144"
  sha256 arm:   "656e92dfaf9b30b737b612df94fb3addb060542f0f7496670a388bd2acab816f",
         intel: "ee1b4b2f0cf392fdd5396846e474435a1f257b7249573f16e9745da1aca70c14"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
