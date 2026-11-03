cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2774"
  sha256 arm:   "5b1833262df1cd778502e86225eda6befeac50c3355be3ef18a71650a712cce7",
         intel: "95785bf496f803938b3b4ab295b3de49809821894c6e202984b368a4ae688c2f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
