cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4497"
  sha256 arm:   "bd374c825045b2ebbcb5a9e1d76aca35b5732aa54f63b7a98b6627c30f10d87d",
         intel: "03f88748d37cdd385f888ce40f600045733df8994d96cc2d45a75c18ab907deb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
