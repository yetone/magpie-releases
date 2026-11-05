cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3074"
  sha256 arm:   "138eabd1d004640ecf3c773ae7a8e14a54dfaa695b4538ccf7a6a1dce1a2f101",
         intel: "4333ca196852bb36ad5a24a283a5aa1720bd364a1d4c378e9e12f138ef96ec71"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
