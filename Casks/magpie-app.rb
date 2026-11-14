cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4219"
  sha256 arm:   "b7b0f0905c292c0f3eaceedfb461f51256c1b18899ab8bab017dfafe9af6b16b",
         intel: "a1efde1eb2050d95e2f24adc240bf68fd1fa97f7dddf0a54fd5b4b9d51429e2e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
