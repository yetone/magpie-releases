cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3975"
  sha256 arm:   "c5b314915b634b324947e851414a5b34b950da0fc1456354f92d2a9b20c5dfde",
         intel: "3022aac735d8b6d65341ed78f45ca8bc62fe638325a94381154bd26117be42b2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
