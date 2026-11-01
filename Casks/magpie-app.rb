cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2638"
  sha256 arm:   "1b82b789845c65ebf39f7fbc2f6117f5515cd3f0d73b6113832a0c728562a7c5",
         intel: "67f6b5fb071a63f846f799b036e83191e49a57575a5a3de333eec2d879ea1c74"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
