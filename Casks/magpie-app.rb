cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2229"
  sha256 arm:   "2e6000ac8486774db7808e5fc2e659bdc835cf1b3339431ce46a3d01a5c1d4a9",
         intel: "df581b25a1672180210e7246ff52e49aaaea3b6c8e70335846e41252254c45fc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
