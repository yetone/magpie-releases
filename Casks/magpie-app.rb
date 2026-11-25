cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4781"
  sha256 arm:   "235e054f8fc874ee9b26437b590515959ba633b707b09785fff1c34d38585649",
         intel: "1a701283a1e4dd051cd831ef16330264f0dea1d44843d2b539db27b7efadd1f2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
