cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3623"
  sha256 arm:   "90c41db043be6ccc4f4b07fbbf4ed3442794f8806e3d20bbbbccb5bc2acd3a4c",
         intel: "25d78fc8400500f499668e279a0ce85ea7379d15166c3a58aa55968ee90cb586"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
