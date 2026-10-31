cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2387"
  sha256 arm:   "f47d4a2e1cf7c4eb52fe603711515eb79f552e0123a62ed64be8db78a56ae8b2",
         intel: "c7077ad90af2bc6543c702ab140af73e35218017e2eea7b1d5617b7919a0c877"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
