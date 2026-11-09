cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3394"
  sha256 arm:   "f422e623892cf7748d73b4dfb37574e8425f07b7d8ce152c55b7d69ed409dc7e",
         intel: "d0972aeb71bc22f39028c250e2433d628888856b0c2b6bb45cb551b38e9fec43"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
