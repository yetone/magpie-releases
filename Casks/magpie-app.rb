cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3148"
  sha256 arm:   "c394ce01a4cb9e9d3c37740d9cfa3cd74dd746d3c70ce0140fc067367e3ad7dc",
         intel: "c494fd698bc468b25e9d7d9375efe1048c89f496633ec11ef74bfadc4dd0fbe7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
