cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4246"
  sha256 arm:   "914934cc6ef52b084e67cab3cea6e22bdcec41fb854d1aaf457f5aa1a1eace3a",
         intel: "0f90f324fa0b74e179e266902c5a2ee1e6e27278ae270a348d451d68536c6958"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
