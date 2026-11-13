cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4088"
  sha256 arm:   "a4bd0f57bbfc05f1f7c1fff3ee114dedc35643e9b9b58917010b065b01e8e128",
         intel: "4afe1d12e28cbedf710ae0b34ac6f0e521599eec783418ae8bab6d2cefaa9888"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
