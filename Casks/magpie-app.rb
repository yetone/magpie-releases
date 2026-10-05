cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1000"
  sha256 arm:   "95487c707e198a861e07595fc40b49da24bd24fae3b2d7e3e8e5b27869aee372",
         intel: "20c5d6eca6e633cc3e76fc8ce2428a96ebe24d3b26266679c0fed47c1191e2ce"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
