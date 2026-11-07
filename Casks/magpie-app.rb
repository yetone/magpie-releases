cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3209"
  sha256 arm:   "a229103eefd4f061c7cc402767992dcd17dcd450d9076556e05a824124a2f754",
         intel: "77f9d2e4814bd8d5b87c6675da12135488a39b9e62da1b2420545ce4f990e29e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
