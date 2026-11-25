cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4806"
  sha256 arm:   "ec8bfb56acb7d10a4c57da23fd98e2558d36970fca436d180c48657a651793db",
         intel: "1061872760a5eebae2f8a9f4a2d746a5c5b5c831cc2bd6d876528fa8db46af8e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
