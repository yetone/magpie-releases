cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1083"
  sha256 arm:   "02c86ded2872433c8fd659fd19217d9048e8611bfcd6344d41fab83772fe7746",
         intel: "4d1c2c646b1d051a430bbfe2596ef4e4a0482999cecfbd6afe1b593d8bc38fba"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
