cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3225"
  sha256 arm:   "fa842dd5d55d7d3699962aa9a2778dd7396254e8c3691e1e391a9efe92f93648",
         intel: "8cb3a832afb08df9980f63a71ba8a9654ba046c3c47c9ae5b85a502a4bdc2d2b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
