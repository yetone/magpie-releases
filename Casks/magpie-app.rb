cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4326"
  sha256 arm:   "245b2deff30fc62bec1cf620b7f45a30738ae30f024c5249b4e505c7db96a08d",
         intel: "4d06769a5cca464200fdf164ff032b22e93158eda4ff7ab8f9080b9cee4f2655"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
