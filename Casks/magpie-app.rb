cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4605"
  sha256 arm:   "0eacb0e978f29ab2acb9bd5b307ead6cfe6e436c0fa0186edc9856398f155f4b",
         intel: "81b88d09087834ac1a2e1ca8fea977c28a780943d55b5f36bbdebe6389e04aef"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
