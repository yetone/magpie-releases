cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4498"
  sha256 arm:   "fa7665703f8ffb00dbc026aa05b2f8caae6f5220b06fe02fd47d1276cc3dbe85",
         intel: "1b56ab9e105a88b308111a2f211143454badbbb038e1a39c75827e9249cac12c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
