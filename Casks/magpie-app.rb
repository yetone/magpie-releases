cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2578"
  sha256 arm:   "a948dcf6fb1368c896d26a1aca287cc0aad331e7dc2f2a33e862291093698601",
         intel: "158ecc6d16bbca585559b7a8b7ef66dc54b1c744d00b2a8059a0e2e0f4cb8e8e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
