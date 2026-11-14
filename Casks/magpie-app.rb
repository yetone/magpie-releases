cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4121"
  sha256 arm:   "e3c85c5f8722378a4c5abd1219d1f97572afe7535d2ab8750a32ada0e20b13d3",
         intel: "b3acffc5326664c70373ca9dd616e2aa6708e48c2a72b5d9669768422c77cfa1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
