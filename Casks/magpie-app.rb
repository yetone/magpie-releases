cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3817"
  sha256 arm:   "d21bfa0d9d57cacf1a5f8ae2c49e3510505a64050cc98c3d16dbf7e0e887c6ed",
         intel: "eea713bc049f18c1163a9f9b269b8044bdd22b970310e5966bf1596a29c02959"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
