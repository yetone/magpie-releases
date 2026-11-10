cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3628"
  sha256 arm:   "14f7a60d6123e5e0d884165274758aaad7dbf968cdb85079c7287bbde8ca4c72",
         intel: "af6a6046a99441eed72b3a068ce2b79ffd43ce95b0883db6d56482d9a8851c59"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
