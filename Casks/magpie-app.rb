cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3255"
  sha256 arm:   "0dadc5a8e3ec20261391f5ea08a1c6e89319f71fc2c16a41ddbcdb68685a65db",
         intel: "57bde6b5a6f5a7b4d42b636b5da27d94d52a28bb1e865201a22d2fecee9b2d72"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
