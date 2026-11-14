cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4143"
  sha256 arm:   "e1e63282e2f43219419176b8b260e7670ae94f51b29c6adb3147885be846d644",
         intel: "2868d4a2753baf02ba6ad6ad43f55bc9695b6f7a505481f297e513b8d2e1cc8a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
