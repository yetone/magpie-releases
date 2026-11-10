cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3567"
  sha256 arm:   "16b9f53aeda914f4678e8d82101756ac753699a35b63013b0d1bd5a99c3f424c",
         intel: "723f6e0b072d3d86fdba0e2bb1c955ed2e11c531f429d7317e7a5bacf5d00219"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
