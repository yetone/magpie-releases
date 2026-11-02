cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2709"
  sha256 arm:   "a9e48bca136b35cf007c09e1c53c3a0d98c28cb911cce411473ac9e4f8209d51",
         intel: "8498b94316a1fc79d30722d79c9ce248a6389e5c2719265c20b3db51617d8a96"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
