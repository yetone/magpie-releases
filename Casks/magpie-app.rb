cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2995"
  sha256 arm:   "31b0d5271391e388fac5d24e851daa2d041f02d66c2f57cb3a5fb505005b9239",
         intel: "bbd365c4f91df4b2c29b7659f00523e0f3997f9fb0c1e6b5772568cc4f12e9c3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
