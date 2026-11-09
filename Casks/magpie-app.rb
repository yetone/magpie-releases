cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3366"
  sha256 arm:   "ebd4ddfd80c78369c5bd51b78acb1c94c590df034a65ff677c613c7e7d1f4c4c",
         intel: "92410ca4a33945475e8da11f5eb3fe94f2e2b1f615c19cef21a5d3377b4cc5d3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
