cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4182"
  sha256 arm:   "90d6283a2f02a3cbe83ff362c99898ff1f60c885009456b1e6071c89458dc701",
         intel: "ed9ef00e204a51e6ead4745f918262548f4512580ea6eb312e201cddd796cc3e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
