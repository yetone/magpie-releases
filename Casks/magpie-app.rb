cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3454"
  sha256 arm:   "ab0ad6e7227cf92b90ea2c1befb485bdf7fe8d1baad51bab99d664dbf5ac36d0",
         intel: "1e27ca52e90b212588c07474c2edb17bcc1812bdb5962967795fa0eafdcfadda"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
