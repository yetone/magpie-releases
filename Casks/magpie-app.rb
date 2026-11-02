cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2757"
  sha256 arm:   "8307ce129eea6ea86f9248e2c72d9b0bfec3067585ccfe437b85f641ed60e3b5",
         intel: "adc332996933d32a8d86ce85dec69a0974e43a62601d8d3149dbed61b16c62a8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
