cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4632"
  sha256 arm:   "35ad64e66076217e4af0a67fd44328cebfd6c5599caec190ad4e491f3342743d",
         intel: "dbc9657ccacb805098575c71515f40ba5418ccb006ae81bad82f8b7d63da427d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
