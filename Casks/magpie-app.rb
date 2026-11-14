cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4180"
  sha256 arm:   "e317267e29429d314be67eabb203b062fe5f477c0f407048d60252cf3b7991af",
         intel: "0fb145cf84df120b53183db6d5053c30e98d79172a25b28e35ad2fda884ec8ee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
