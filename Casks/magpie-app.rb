cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4937"
  sha256 arm:   "b99022e5fa78e73834a67d9b8827af46b2beb08ef1feb4d319133462d91981fb",
         intel: "83e173c5a39e1e4531646dc1a7be006867eace33797c6f67e19af319094e47ad"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
