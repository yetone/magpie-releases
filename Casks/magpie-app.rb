cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2264"
  sha256 arm:   "28191cedaf1449b01a3773070f1f661574b62670a5a8eb01a56fc4c64092e0f7",
         intel: "73f4e265a3c985d92f5bccfb0e9d001bd3ed5e0c5d6fee1de05c9c4185b0a6aa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
