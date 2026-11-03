cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2783"
  sha256 arm:   "c87140b5c87844abaabe3b999caaae41cad562be7cfb3938ca3ef2690cdb1526",
         intel: "257bcc2832667add03fa0baa955639a4ff4f636ce8a64b8f561758052016fa13"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
