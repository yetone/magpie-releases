cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3942"
  sha256 arm:   "e904b16eff4b28bd86165a8f6c7c8f0a06e2cecfaf7b28281809ddb2e450204b",
         intel: "09a375771f0f280645a28b5198335a78deca6b6e83b751def73499543e44fd52"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
