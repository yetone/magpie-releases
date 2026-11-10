cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3527"
  sha256 arm:   "b797e8aa02770dee1e9d1ed7512b529df59c0a76e0c49461b341007fd57b7048",
         intel: "82b1856e2eff98e3161ace8e9d606fee001b702b971bdbe0dc2b64422391e1bf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
