cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3116"
  sha256 arm:   "34d5f5ff7300198e3cbb357f51635ff6e8097b82e73f83f40661433f9da59e65",
         intel: "33d657ca770f57a3bfe232575f9cfc391261aa6241f3e6df727ec9edf6eacdd0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
