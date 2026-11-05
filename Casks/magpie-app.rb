cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3060"
  sha256 arm:   "a18a43341cdd2d6dfa87ba9298a63a65471b692582c4e23a1fe0ebb1af8fb9f0",
         intel: "8612ff4aaefecf0f72fa137bd7ba08f3da6ff6dc6a46cd4c48f5fd88db9db3b2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
